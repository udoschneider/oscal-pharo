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

{ #category : #accessing }
OSCALMetadata >> documentIds [
	^ documentIds
]

{ #category : #accessing }
OSCALMetadata >> documentIds: aCollection [
	documentIds := aCollection
]

{ #category : #accessing }
OSCALMetadata >> lastModified [
	^ lastModified
]

{ #category : #accessing }
OSCALMetadata >> lastModified: aDateAndTime [
	lastModified := aDateAndTime
]

{ #category : #accessing }
OSCALMetadata >> links [
	^ links
]

{ #category : #accessing }
OSCALMetadata >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALMetadata >> locations [
	^ locations
]

{ #category : #accessing }
OSCALMetadata >> locations: aCollection [
	locations := aCollection
]

{ #category : #accessing }
OSCALMetadata >> oscalVersion [
	^ oscalVersion
]

{ #category : #accessing }
OSCALMetadata >> oscalVersion: aCollection [
	oscalVersion := aCollection
]

{ #category : #accessing }
OSCALMetadata >> parties [
	^ parties
]

{ #category : #accessing }
OSCALMetadata >> parties: aCollection [
	parties := aCollection
]

{ #category : #accessing }
OSCALMetadata >> properties [
	^ properties
]

{ #category : #accessing }
OSCALMetadata >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALMetadata >> published [
	^ published
]

{ #category : #accessing }
OSCALMetadata >> published: aDateAndTime [
	published := aDateAndTime
]

{ #category : #accessing }
OSCALMetadata >> remarks [
	^ remarks
]

{ #category : #accessing }
OSCALMetadata >> remarks: aMarkupMultiline [
	remarks := aMarkupMultiline
]

{ #category : #accessing }
OSCALMetadata >> responsibleParties [
	^ responsibleParties
]

{ #category : #accessing }
OSCALMetadata >> responsibleParties: aCollection [
	responsibleParties := aCollection
]

{ #category : #accessing }
OSCALMetadata >> revisionHistory [
	^ revisionHistory
]

{ #category : #accessing }
OSCALMetadata >> revisionHistory: aCollection [
	revisionHistory := aCollection
]

{ #category : #accessing }
OSCALMetadata >> roles [
	^ roles
]

{ #category : #accessing }
OSCALMetadata >> roles: aCollection [
	roles := aCollection
]

{ #category : #accessing }
OSCALMetadata >> title [
	^ title
]

{ #category : #accessing }
OSCALMetadata >> title: aMarkupLine [
	title := aMarkupLine
]

{ #category : #accessing }
OSCALMetadata >> version [
	^ version
]

{ #category : #accessing }
OSCALMetadata >> version: aString [
	version := aString
]
