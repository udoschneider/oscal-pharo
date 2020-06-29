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

{ #category : #'as yet unclassified' }
OSCALControl class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #id) valueSchema: #ncname.
			mapping mapOscalClass.
			(mapping mapInstVar: #title) valueSchema: #'string-markup-line'.
			mapping mapOscalParameters.
			mapping mapOscalProperties.
			mapping mapOscalAnnotations.
			mapping mapOscalLinks.
			mapping mapOscalParts.
			mapping mapOscalControls.
			self ]
]

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

{ #category : #'magritte-description' }
OSCALControl >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 60;
		yourself
]

{ #category : #'magritte-description' }
OSCALControl >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 20;
		yourself
]

{ #category : #'magritte-description' }
OSCALControl >> descriptionControls [
	<magritteDescription>
	^ super descriptionControls
		priority: 90;
		yourself
]

{ #category : #'magritte-description' }
OSCALControl >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'magritte-description' }
OSCALControl >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 70;
		yourself
]

{ #category : #'magritte-description' }
OSCALControl >> descriptionParameters [
	<magritteDescription>
	^ super descriptionParameters
		priority: 40;
		yourself
]

{ #category : #'magritte-description' }
OSCALControl >> descriptionParts [
	<magritteDescription>
	^ super descriptionParts
		priority: 80;
		yourself
]

{ #category : #'magritte-description' }
OSCALControl >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 50;
		yourself
]

{ #category : #'magritte-description' }
OSCALControl >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 30;
		yourself
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
