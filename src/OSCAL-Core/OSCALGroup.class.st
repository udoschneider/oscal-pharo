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

{ #category : #'as yet unclassified' }
OSCALGroup class >> mapToJsonMapper: mapper [
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
			mapping mapOscalGroups.
			mapping mapOscalControls.
			self ]
]

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

{ #category : #'magritte-description' }
OSCALGroup >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 60;
		yourself
]

{ #category : #'magritte-description' }
OSCALGroup >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 20;
		yourself
]

{ #category : #'magritte-description' }
OSCALGroup >> descriptionControls [
	<magritteDescription>
	^ super descriptionControls
		priority: 100;
		yourself
]

{ #category : #'magritte-description' }
OSCALGroup >> descriptionGroups [
	<magritteDescription>
	^ super descriptionGroups
		priority: 90;
		yourself
]

{ #category : #'magritte-description' }
OSCALGroup >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'magritte-description' }
OSCALGroup >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 70;
		yourself
]

{ #category : #'magritte-description' }
OSCALGroup >> descriptionParameters [
	<magritteDescription>
	^ super descriptionParameters
		priority: 40;
		yourself
]

{ #category : #'magritte-description' }
OSCALGroup >> descriptionParts [
	<magritteDescription>
	^ super descriptionParts
		priority: 80;
		yourself
]

{ #category : #'magritte-description' }
OSCALGroup >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 50;
		yourself
]

{ #category : #'magritte-description' }
OSCALGroup >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 30;
		yourself
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
