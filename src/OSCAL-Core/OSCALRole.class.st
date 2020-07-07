Class {
	#name : #OSCALRole,
	#superclass : #OSCALObject,
	#instVars : [
		'id',
		'title',
		'shortName',
		'properties',
		'annotations',
		'links',
		'remarks',
		'desc'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALRole >> annotations [
	^ annotations
]

{ #category : #accessing }
OSCALRole >> annotations: aCollection [
	annotations := aCollection
]

{ #category : #accessing }
OSCALRole >> desc [
	^ desc
]

{ #category : #accessing }
OSCALRole >> desc: aString [
	desc := aString
]

{ #category : #accessing }
OSCALRole >> id [
	^ id
]

{ #category : #accessing }
OSCALRole >> id: anNCName [
	id := anNCName
]

{ #category : #accessing }
OSCALRole >> links [
	^ links
]

{ #category : #accessing }
OSCALRole >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALRole >> properties [
	^ properties
]

{ #category : #accessing }
OSCALRole >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALRole >> remarks [
	^ remarks
]

{ #category : #accessing }
OSCALRole >> remarks: aMarkupMultiline [
	remarks := aMarkupMultiline
]

{ #category : #accessing }
OSCALRole >> shortName [
	^ shortName
]

{ #category : #accessing }
OSCALRole >> shortName: aString [
	shortName := aString
]

{ #category : #accessing }
OSCALRole >> title [
	^ title
]

{ #category : #accessing }
OSCALRole >> title: aMarkupLine [
	title := aMarkupLine
]
