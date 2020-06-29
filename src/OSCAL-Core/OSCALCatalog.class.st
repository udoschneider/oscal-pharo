Class {
	#name : #OSCALCatalog,
	#superclass : #OSCALObject,
	#instVars : [
		'uuid',
		'metadata',
		'parameters',
		'controls',
		'groups',
		'backmatter'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALCatalog class >> mapToJsonMapper_: mapper [
	mapper
		for: self
		do: [ :mapping | 
			mapping mapOscalUuid.
			(mapping mapInstVar: #metadata) valueSchema: OSCALMetadata.
			mapping mapOscalParameters.
			mapping mapOscalControls.
			mapping mapOscalGroups.
			(mapping mapInstVar: #backmatter to: 'back-matter')
				valueSchema: OSCALBackmatter ]
]

{ #category : #'as yet unclassified' }
OSCALCatalog class >> nistSp800_53Rev4BaseUrl [
	^ 'https://raw.githubusercontent.com/usnistgov/OSCAL/master/content/nist.gov/SP800-53/rev4/json'
		asUrl
]

{ #category : #'as yet unclassified' }
OSCALCatalog class >> nistSp800_53Rev4Catalog [
	^ OSCALCatalog
		readFrom: self nistSp800_53Rev4CatalogContents readStream
]

{ #category : #'as yet unclassified' }
OSCALCatalog class >> nistSp800_53Rev4CatalogContents [
	^ (ZnEasy get: self nistSp800_53Rev4CatalogUrl) entity contents
]

{ #category : #'as yet unclassified' }
OSCALCatalog class >> nistSp800_53Rev4CatalogMinContents [
	^ (ZnEasy get: self nistSp800_53Rev4CatalogMinUrl) entity contents
]

{ #category : #'as yet unclassified' }
OSCALCatalog class >> nistSp800_53Rev4CatalogMinUrl [
	^ self nistSp800_53Rev4BaseUrl
		/ 'NIST_SP-800-53_rev4_catalog-min.json'
]

{ #category : #'as yet unclassified' }
OSCALCatalog class >> nistSp800_53Rev4CatalogUrl [
	^ self nistSp800_53Rev4BaseUrl / 'NIST_SP-800-53_rev4_catalog.json'
]

{ #category : #'NeoJSON-Mapping' }
OSCALCatalog class >> testExportEquality [
	| sourceRaw sourceClean oscal oscalExport oscalImport |
	sourceRaw := self nistSp800_53Rev4CatalogMinContents.
	self
		writeUtf8String: sourceRaw
		to: FileLocator imageDirectory / 'source.raw'.
	sourceClean := sourceRaw sanitizeJson.
	self
		writeUtf8String: sourceClean
		to: FileLocator imageDirectory / 'source.clean'.
	oscal := OSCALCatalog readFrom: sourceRaw readStream.
	oscalExport := String
		streamContents: [ :stream | oscal writeTo: stream ].
	self
		writeUtf8String: oscalExport
		to: FileLocator imageDirectory / 'oscal_data.export'.
	oscalImport := oscalExport sanitizeJson.
	self
		writeUtf8String: oscalImport
		to: FileLocator imageDirectory / 'oscal_data.import'
]

{ #category : #'instance creation' }
OSCALCatalog class >> wrapperKeyName [
	^ 'catalog'
]

{ #category : #accessing }
OSCALCatalog >> backmatter [
	^ backmatter
]

{ #category : #accessing }
OSCALCatalog >> backmatter: anObject [
	backmatter := anObject
]

{ #category : #accessing }
OSCALCatalog >> controls [
	^ controls
]

{ #category : #accessing }
OSCALCatalog >> controls: aCollection [
	controls := aCollection
]

{ #category : #'magritte descriptions' }
OSCALCatalog >> descriptionBackmatter [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Backmatter' asMultilanguageString;
		comment: 'Back matter including references and resources.';
		accessor: #backmatter;
		priority: 70;
		classes: (Array with: OSCALBackmatter);
		beJsonMapped;
		jsonProperty: 'back-matter';
		yourself
]

{ #category : #'magritte descriptions' }
OSCALCatalog >> descriptionControls [
	<magritteDescription>
	^ super descriptionControls
		priority: 40;
		yourself
]

{ #category : #'magritte descriptions' }
OSCALCatalog >> descriptionGroups [
	<magritteDescription>
	^ super descriptionGroups
		priority: 50;
		yourself
]

{ #category : #'magritte descriptions' }
OSCALCatalog >> descriptionMetadata [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Metadata' asMultilanguageString;
		comment:
			'Provides information about the publication and availability of the containing document.';
		accessor: #metadata;
		priority: 20;
		classes: (Array with: OSCALMetadata);
		beJsonMapped;
		yourself
]

{ #category : #'magritte descriptions' }
OSCALCatalog >> descriptionParameters [
	<magritteDescription>
	^ super descriptionParameters
		priority: 30;
		yourself
]

{ #category : #'magritte descriptions' }
OSCALCatalog >> descriptionUUID [
	<magritteDescription>
	^ super descriptionUUID
		priority: 10;
		yourself
]

{ #category : #accessing }
OSCALCatalog >> groups [
	^ groups
]

{ #category : #accessing }
OSCALCatalog >> groups: aCollection [
	groups := aCollection
]

{ #category : #accessing }
OSCALCatalog >> metadata [
	^ metadata
]

{ #category : #accessing }
OSCALCatalog >> metadata: anOSCALMetadata [
	metadata := anOSCALMetadata
]

{ #category : #accessing }
OSCALCatalog >> parameters [
	^ parameters
]

{ #category : #accessing }
OSCALCatalog >> parameters: aCollection [
	parameters := aCollection
]

{ #category : #accessing }
OSCALCatalog >> uuid [
	^ uuid
]

{ #category : #accessing }
OSCALCatalog >> uuid: aUUID [
	uuid := aUUID
]
