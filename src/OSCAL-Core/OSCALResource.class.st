Class {
	#name : #OSCALResource,
	#superclass : #OSCALObject,
	#instVars : [
		'uuid',
		'title',
		'desc',
		'parties',
		'properties',
		'documentIds',
		'citation',
		'rlinks',
		'attachments',
		'remarks'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALResource >> attachments [
	^ attachments
]

{ #category : #accessing }
OSCALResource >> attachments: aCollection [
	attachments := aCollection
]

{ #category : #accessing }
OSCALResource >> citation [
	^ citation
]

{ #category : #accessing }
OSCALResource >> citation: anOSCALCitation [
	citation := anOSCALCitation
]

{ #category : #accessing }
OSCALResource >> desc [
	^ desc
]

{ #category : #accessing }
OSCALResource >> desc: aString [
	desc := aString
]

{ #category : #accessing }
OSCALResource >> documentIds [
	^ documentIds
]

{ #category : #accessing }
OSCALResource >> documentIds: aCollection [
	documentIds := aCollection
]

{ #category : #accessing }
OSCALResource >> parties [
	^ parties
]

{ #category : #accessing }
OSCALResource >> parties: aCollection [
	parties := aCollection
]

{ #category : #accessing }
OSCALResource >> properties [
	^ properties
]

{ #category : #accessing }
OSCALResource >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALResource >> remarks [
	^ remarks
]

{ #category : #accessing }
OSCALResource >> remarks: aMarkupMultiline [
	remarks := aMarkupMultiline
]

{ #category : #accessing }
OSCALResource >> rlinks [
	^ rlinks
]

{ #category : #accessing }
OSCALResource >> rlinks: aCollection [
	rlinks := aCollection
]

{ #category : #accessing }
OSCALResource >> title [
	^ title
]

{ #category : #accessing }
OSCALResource >> title: aMarkupLine [
	title := aMarkupLine
]

{ #category : #accessing }
OSCALResource >> uuid [
	^ uuid
]

{ #category : #accessing }
OSCALResource >> uuid: aUUID [
	uuid := aUUID
]
