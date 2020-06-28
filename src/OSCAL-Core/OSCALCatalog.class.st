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
OSCALCatalog class >> configureClassMapper: mapper [
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
OSCALCatalog class >> nist_sp_800_53_rev4_catalog [
	^ (ZnEasy
		get:
			'https://raw.githubusercontent.com/usnistgov/OSCAL/master/content/nist.gov/SP800-53/rev4/json/NIST_SP-800-53_rev4_catalog.json')
		entity contents
]

{ #category : #'as yet unclassified' }
OSCALCatalog class >> nist_sp_800_53_rev4_catalog_min [
	^ (ZnEasy
		get:
			'https://raw.githubusercontent.com/usnistgov/OSCAL/master/content/nist.gov/SP800-53/rev4/json/NIST_SP-800-53_rev4_catalog-min.json')
		entity contents
]

{ #category : #'NeoJSON-Mapping' }
OSCALCatalog class >> testExportEquality [
	| sourceRaw sourceClean oscal oscalExport oscalImport |
	sourceRaw := self nist_sp_800_53_rev4_catalog_min.
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

{ #category : #printing }
OSCALCatalog >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: metadata title;
		nextPut: $)
]
