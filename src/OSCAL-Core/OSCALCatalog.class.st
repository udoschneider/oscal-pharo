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
