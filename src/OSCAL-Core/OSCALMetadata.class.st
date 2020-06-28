Class {
	#name : #OSCALMetadata,
	#superclass : #OSCALObject,
	#instVars : [
		'title',
		'published',
		'lastModified',
		'version',
		'oscalVersion',
		'revisionHistory',
		'documentIds',
		'properties',
		'links',
		'roles',
		'locations',
		'parties',
		'responsibleParties',
		'remarks'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALMetadata class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #title) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #published)
				valueSchema: #'string-dateTime-with-timezone'.
			(mapping mapInstVar: #lastModified to: 'last-modified')
				valueSchema: #'string-dateTime-with-timezone'.
			(mapping mapInstVar: #version) valueSchema: #string.
			(mapping mapInstVar: #oscalVersion to: 'oscal-version')
				valueSchema: #string.
			(mapping mapInstVar: #revisionHistory to: 'revision-histor')
				valueSchema: #'array-of-revision'.
			mapping mapOscalDocumentIds.
			mapping mapOscalProperties.
			mapping mapOscalLinks.
			mapping mapOscalRoles.
			mapping mapOscalLocations.
			mapping mapOscalParties.
			mapping mapOscalResponsibleParties.
			mapping mapOscalRemarks.
			self ]
]

{ #category : #accessing }
OSCALMetadata >> documentIds [
	^ documentIds
]

{ #category : #accessing }
OSCALMetadata >> documentIds: anObject [
	documentIds := anObject
]

{ #category : #accessing }
OSCALMetadata >> lastModified [
	^ lastModified
]

{ #category : #accessing }
OSCALMetadata >> lastModified: anObject [
	lastModified := anObject
]

{ #category : #accessing }
OSCALMetadata >> links [
	^ links
]

{ #category : #accessing }
OSCALMetadata >> links: anObject [
	links := anObject
]

{ #category : #accessing }
OSCALMetadata >> locations [
	^ locations
]

{ #category : #accessing }
OSCALMetadata >> locations: anObject [
	locations := anObject
]

{ #category : #accessing }
OSCALMetadata >> oscalVersion [
	^ oscalVersion
]

{ #category : #accessing }
OSCALMetadata >> oscalVersion: anObject [
	oscalVersion := anObject
]

{ #category : #accessing }
OSCALMetadata >> parties [
	^ parties
]

{ #category : #accessing }
OSCALMetadata >> parties: anObject [
	parties := anObject
]

{ #category : #printing }
OSCALMetadata >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: title;
		nextPut: $)
]

{ #category : #accessing }
OSCALMetadata >> properties [
	^ properties
]

{ #category : #accessing }
OSCALMetadata >> properties: anObject [
	properties := anObject
]

{ #category : #accessing }
OSCALMetadata >> published [
	^ published
]

{ #category : #accessing }
OSCALMetadata >> published: anObject [
	published := anObject
]

{ #category : #accessing }
OSCALMetadata >> remarks [
	^ remarks
]

{ #category : #accessing }
OSCALMetadata >> remarks: anObject [
	remarks := anObject
]

{ #category : #accessing }
OSCALMetadata >> responsibleParty [
	^ responsibleParty
]

{ #category : #accessing }
OSCALMetadata >> responsibleParty: anObject [
	responsibleParty := anObject
]

{ #category : #accessing }
OSCALMetadata >> revisionHistory [
	^ revisionHistory
]

{ #category : #accessing }
OSCALMetadata >> revisionHistory: anObject [
	revisionHistory := anObject
]

{ #category : #accessing }
OSCALMetadata >> roles [
	^ roles
]

{ #category : #accessing }
OSCALMetadata >> roles: anObject [
	roles := anObject
]

{ #category : #accessing }
OSCALMetadata >> title [
	^ title
]

{ #category : #accessing }
OSCALMetadata >> title: anObject [
	title := anObject
]

{ #category : #accessing }
OSCALMetadata >> version [
	^ version
]

{ #category : #accessing }
OSCALMetadata >> version: anObject [
	version := anObject
]
