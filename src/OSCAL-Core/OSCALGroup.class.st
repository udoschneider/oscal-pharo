Class {
	#name : #OSCALGroup,
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
		'groups',
		'controls'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALGroup >> annotations [
	^ annotations
]

{ #category : #accessing }
OSCALGroup >> annotations: aCollection [
	annotations := aCollection
]

{ #category : #accessing }
OSCALGroup >> controls [
	^ controls
]

{ #category : #accessing }
OSCALGroup >> controls: aCollection [
	controls := aCollection
]

{ #category : #accessing }
OSCALGroup >> groups [
	^ groups
]

{ #category : #accessing }
OSCALGroup >> groups: aCollection [
	groups := aCollection
]

{ #category : #accessing }
OSCALGroup >> id [
	^ id
]

{ #category : #accessing }
OSCALGroup >> id: aNCName [
	id := aNCName
]

{ #category : #accessing }
OSCALGroup >> links [
	^ links
]

{ #category : #accessing }
OSCALGroup >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALGroup >> oscalClass [
	^ oscalClass
]

{ #category : #accessing }
OSCALGroup >> oscalClass: anNcName [
	oscalClass := anNcName
]

{ #category : #accessing }
OSCALGroup >> parameters [
	^ parameters
]

{ #category : #accessing }
OSCALGroup >> parameters: aCollection [
	parameters := aCollection
]

{ #category : #accessing }
OSCALGroup >> parts [
	^ parts
]

{ #category : #accessing }
OSCALGroup >> parts: aCollection [
	parts := aCollection
]

{ #category : #accessing }
OSCALGroup >> properties [
	^ properties
]

{ #category : #accessing }
OSCALGroup >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALGroup >> title [
	^ title
]

{ #category : #accessing }
OSCALGroup >> title: aMarkupLine [
	title := aMarkupLine
]
