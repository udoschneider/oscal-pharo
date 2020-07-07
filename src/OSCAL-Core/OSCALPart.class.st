Class {
	#name : #OSCALPart,
	#superclass : #OSCALObject,
	#instVars : [
		'id',
		'name',
		'ns',
		'oscalClass',
		'title',
		'properties',
		'prose',
		'parts',
		'links'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALPart >> id [
	^ id
]

{ #category : #accessing }
OSCALPart >> id: aNCName [
	id := aNCName
]

{ #category : #accessing }
OSCALPart >> links [
	^ links
]

{ #category : #accessing }
OSCALPart >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALPart >> name [
	^ name
]

{ #category : #accessing }
OSCALPart >> name: aNCName [
	name := aNCName
]

{ #category : #accessing }
OSCALPart >> ns [
	^ ns
]

{ #category : #accessing }
OSCALPart >> ns: aNCName [
	ns := aNCName
]

{ #category : #accessing }
OSCALPart >> oscalClass [
	^ oscalClass
]

{ #category : #accessing }
OSCALPart >> oscalClass: aNCName [
	oscalClass := aNCName
]

{ #category : #accessing }
OSCALPart >> parts [
	^ parts
]

{ #category : #accessing }
OSCALPart >> parts: aCollection [
	parts := aCollection
]

{ #category : #accessing }
OSCALPart >> properties [
	^ properties
]

{ #category : #accessing }
OSCALPart >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALPart >> prose [
	^ prose
]

{ #category : #accessing }
OSCALPart >> prose: aMarkupMultiline [
	prose := aMarkupMultiline
]

{ #category : #accessing }
OSCALPart >> title [
	^ title
]

{ #category : #accessing }
OSCALPart >> title: aMarkupline [
	title := aMarkupline
]
