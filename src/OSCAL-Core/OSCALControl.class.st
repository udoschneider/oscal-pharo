Class {
	#name : #OSCALControl,
	#superclass : #OSCALObject,
	#instVars : [
		'id',
		'oscalClass',
		'title',
		'parameters',
		'properties',
		'annotations',
		'links',
		'parts',
		'controls'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALControl >> annotations [
	^ annotations
]

{ #category : #accessing }
OSCALControl >> annotations: aCollection [
	annotations := aCollection
]

{ #category : #accessing }
OSCALControl >> controls [
	^ controls
]

{ #category : #accessing }
OSCALControl >> controls: aCollection [
	controls := aCollection
]

{ #category : #accessing }
OSCALControl >> id [
	^ id
]

{ #category : #accessing }
OSCALControl >> id: anNcName [
	id := anNcName
]

{ #category : #accessing }
OSCALControl >> links [
	^ links
]

{ #category : #accessing }
OSCALControl >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALControl >> oscalClass [
	^ oscalClass
]

{ #category : #accessing }
OSCALControl >> oscalClass: aNCName [
	oscalClass := aNCName
]

{ #category : #accessing }
OSCALControl >> parameters [
	^ parameters
]

{ #category : #accessing }
OSCALControl >> parameters: aCollection [
	parameters := aCollection
]

{ #category : #accessing }
OSCALControl >> parts [
	^ parts
]

{ #category : #accessing }
OSCALControl >> parts: aCollection [
	parts := aCollection
]

{ #category : #accessing }
OSCALControl >> properties [
	^ properties
]

{ #category : #accessing }
OSCALControl >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALControl >> title [
	^ title
]

{ #category : #accessing }
OSCALControl >> title: aMarkupLine [
	title := aMarkupLine
]
