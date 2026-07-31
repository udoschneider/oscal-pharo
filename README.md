# oscal-pharo

A partial Pharo Smalltalk object model for [OSCAL](https://pages.nist.gov/OSCAL/) (NIST Open Security
Controls Assessment Language). It maps the OSCAL **catalog** model to Smalltalk classes and reads/writes
the JSON serialization via NeoJSON, driven by [Magritte](https://github.com/magritte-metamodel/magritte)
descriptions.

## Status

Experimental and unfinished. Four commits, last activity July 2020, targeting the OSCAL schemas of that
time. The last commit ("Split into packages") moved the Magritte-to-JSON mapping infrastructure into the
author's separate [ustools-pharo](https://github.com/udoschneider/ustools-pharo) repository without
declaring the dependency here. Loading `USTools` supplies most of what is missing (`USModelPart`,
`beJsonMapped`, `jsonProperty:`, `mapMagritteClass:`, `MAUuidDescription`, `MAMapDescription`), but not
all of it: `USTools-Magritte-NeoJSON` itself sends `mapToJsonMapper:` and `jsonMappedClass`, which are
defined nowhere in either repository. So this code does not run as published even with `USTools` loaded —
see [Dependencies](#dependencies).

## Scope

Covered: the OSCAL **catalog** model only — `OSCALCatalog` is the sole class implementing
`wrapperKeyName` (`'catalog'`), with `OSCALMetadata`, `OSCALGroup`, `OSCALControl`, `OSCALParam`,
`OSCALPart`, `OSCALProp`, `OSCALLink`, `OSCALRole`, `OSCALParty`, `OSCALResponsiblyParty`,
`OSCALAddress`, `OSCALBackmatter`, `OSCALResource`, `OSCALCitation`, `OSCALRlink`, `OSCALDocId` and
`OSCALSelect` beneath it.

Not covered: profile, component definition, system security plan, assessment plan, assessment results
and POA&M. There are no classes for those models.

Several catalog-adjacent classes exist as empty stubs with no instance variables and no Magritte
descriptions: `OSCALAnnotation`, `OSCALBase64`, `OSCALConstraint`, `OSCALExternalId`, `OSCALGuideline`,
`OSCALHash`, `OSCALLocation`, `OSCALMemberOfOrganization`, `OSCALPhone`, `OSCALRevision`, `OSCALUsage`.
They are referenced as relation targets but carry no data.

JSON is the only serialization implemented. There is no XML or YAML support.

## Installation

There is **no** `BaselineOf` or `ConfigurationOf` class in this repository, so there is no Metacello
install expression. The packages must be loaded manually with Iceberg:

1. Open Iceberg and add a repository: `github.com/udoschneider/oscal-pharo`, branch `master`,
   subdirectory `src` (Tonel format).
2. Load the packages in this order: `OSCAL-Literals`, `OSCAL-Core`, `OSCAL-Magritte`, and optionally
   `OSCAL-Tests`.

Loading will leave undeclared references (see below).

## Usage

Reading a catalog from a JSON stream:

```smalltalk
| catalog |
catalog := OSCALCatalog readFrom: aReadStream.
catalog metadata title.
catalog metadata oscalVersion.
catalog groups do: [ :group |
    group controls do: [ :control |
        Transcript showln: control id , ' - ' , control title ] ]
```

Writing a catalog back out (pretty-printed, wrapped in the `"catalog"` key):

```smalltalk
String streamContents: [ :stream | catalog writeTo: stream ]
```

Convenience class-side methods fetch the NIST SP 800-53 rev 4 catalog over HTTP with `ZnEasy`:

```smalltalk
OSCALCatalog nistSp800_53Rev4Catalog.              "download and parse"
OSCALCatalog nistSp800_53Rev4CatalogContents.      "raw JSON string"
OSCALCatalog nistSp800_53Rev4CatalogMinContents.   "raw JSON, -min variant"
```

These point at `https://raw.githubusercontent.com/usnistgov/OSCAL/master/content/nist.gov/SP800-53/rev4/json`,
a path that has since moved in the upstream OSCAL repository.

`OSCALObject class >> readFrom:` and `OSCALObject >> writeTo:` are the generic entry points; both build a
NeoJSON reader/writer from the receiver's Magritte description via `mapMagritteClass:` and unwrap/wrap the
top-level model key via `mapOscalWrapper:`.

## Structure

| Package | Contents |
| --- | --- |
| `OSCAL-Core` | Domain classes (`OSCALObject` and subclasses), plain instance variables and accessors, plus `NeoJSONMapper >> mapOscalWrapper:`. |
| `OSCAL-Literals` | `NcName`, `MarkupLine`, `MarkupMultiline` — `String` subclasses used as OSCAL datatypes. Note these names are unprefixed. |
| `OSCAL-Magritte` | Magritte descriptions for the domain classes as class extensions, plus `MANcNameDescription`, `MAMarkupLineDescription`, `MAMarkupMultiLineDescription`. The descriptions carry the JSON property names (e.g. `jsonProperty: 'back-matter'`), so parsing, writing and any Magritte-driven UI all derive from one source. |
| `OSCAL-Tests` | `OSCALTest` and `OSCALTestResource`. |

`OSCAL-Core` and `OSCAL-Magritte` are deliberately separate: the domain model holds no description logic,
and the Magritte layer adds it via extension methods tagged `<magritteDescription>`.

## Dependencies

From the image: **Magritte** (`MADescription` and subclasses, `MAObject`), **NeoJSON**
(`NeoJSONReader`/`NeoJSONWriter`/`NeoJSONMapper`) and **Zinc** (`ZnEasy`, `ZnUrl`).

Also required, but defined nowhere in this repository and not referenced by any package here:

- `USModelPart` — the superclass of `OSCALObject`.
- The Magritte/JSON bridge: `MADescription >> beJsonMapped`, `jsonProperty:`, `jsonValueSchema`,
  `NeoJSONMapper >> mapMagritteClass:`, and the `MADescriptionJsonMapper` hierarchy.
- `MAUuidDescription` and `MAMapDescription`.
- `MADescription >> visibleInReport:`.
- `String >> sanitizeJson` (used by `OSCALCatalog class >> testExportEquality`).

These lived in `OSCAL-Core` up to commit `8403e3b` and were removed by `bc9c07b` when the code was split
into packages. Most of them now live in [ustools-pharo](https://github.com/udoschneider/ustools-pharo),
in the packages `USTools-QCMagritte` (`USModelPart`) and `USTools-Magritte-NeoJSON` (the bridge,
`MAUuidDescription`, `MAMapDescription`), which loads via:

```smalltalk
Metacello new
	baseline: 'USTools';
	repository: 'github://udoschneider/ustools-pharo:master/src';
	load.
```

That is still not sufficient. `USTools-Magritte-NeoJSON` sends `mapToJsonMapper:` (from
`MADescription >> map:toJsonMapper:`) and `jsonMappedClass` (from `MADescriptionJsonMapper >> mappedClass`),
and neither selector is implemented in either repository. `visibleInReport:` and `sanitizeJson` are
likewise absent from both. You would have to supply those yourself to get this running.

## Pharo version

No Pharo version is declared anywhere in the repository. The code is Tonel-format from mid-2020, which
corresponds to Pharo 8.

## Tests

`OSCAL-Tests` contains no test methods. `OSCALTest` defines only helpers (`json:`, `write:`, `fullCatalog`),
and `OSCALTestResource >> setUp` calls `nistSp800_53Rev4CatalogContents` on `OSCALObject`, where it is not
defined (it is a class method of `OSCALCatalog`), so the resource will not initialize. Treat the test
package as a stub.

## License

No LICENSE file is present in the repository or its history; the licensing terms are unstated.
