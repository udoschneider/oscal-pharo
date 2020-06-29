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

{ #category : #'as yet unclassified' }
OSCALRole class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #id) valueSchema: #ncname.
			(mapping mapInstVar: #title) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #shortName to: 'short-name')
				valueSchema: #string.
			(mapping mapInstVar: #description to: 'desc') valueSchema: #string.
			mapping mapOscalProperties.
			mapping mapOscalAnnotations.
			mapping mapOscalLinks.
			mapping mapOscalRemarks ]
]

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

{ #category : #'magritte-description' }
OSCALRole >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 60;
		yourself
]

{ #category : #'magritte-description' }
OSCALRole >> descriptionDesc [
	<magritteDescription>
	^ super descriptionDesc
		priority: 40;
		yourself
]

{ #category : #'magritte-description' }
OSCALRole >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'magritte-description' }
OSCALRole >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 70;
		yourself
]

{ #category : #'magritte-description' }
OSCALRole >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 50;
		yourself
]

{ #category : #'magritte-description' }
OSCALRole >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 80;
		yourself
]

{ #category : #'magritte-description' }
OSCALRole >> descriptionShortName [
	<magritteDescription>
	^ super descriptionShortName
		priority: 30;
		yourself
]

{ #category : #'magritte-description' }
OSCALRole >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 20;
		yourself
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
