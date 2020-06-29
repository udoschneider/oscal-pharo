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

{ #category : #'as yet unclassified' }
OSCALPart class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #id) valueSchema: #ncname.
			(mapping mapInstVar: #name) valueSchema: #ncname.
			(mapping mapInstVar: #ns) valueSchema: #string.
			mapping mapOscalClass.
			(mapping mapInstVar: #title) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #properties) valueSchema: #'array-of-prop'.
			(mapping mapInstVar: #prose)
				valueSchema: #'string-markup-multiline'.
			mapping mapOscalParts.
			mapping mapOscalLinks ]
]

{ #category : #'magritte-description' }
OSCALPart >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 40;
		yourself
]

{ #category : #'magritte-description' }
OSCALPart >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'magritte-description' }
OSCALPart >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 90;
		yourself
]

{ #category : #'magritte-description' }
OSCALPart >> descriptionName [
	<magritteDescription>
	^ super descriptionName
		priority: 20;
		yourself
]

{ #category : #'magritte-description' }
OSCALPart >> descriptionNs [
	<magritteDescription>
	^ super descriptionNs
		priority: 30;
		yourself
]

{ #category : #'magritte-description' }
OSCALPart >> descriptionParts [
	<magritteDescription>
	^ super descriptionParts
		priority: 80;
		yourself
]

{ #category : #'magritte-description' }
OSCALPart >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 60;
		yourself
]

{ #category : #'magritte-description' }
OSCALPart >> descriptionProse [
	<magritteDescription>
	^ MAMarkupMultiLineDescription new
		label: 'Prose' asMultilanguageString;
		comment: 'Prose permits multiple paragraphs, lists, tables etc.';
		accessor: #prose;
		beJsonMapped;
		priority: 70;
		yourself
]

{ #category : #'magritte-description' }
OSCALPart >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 50;
		yourself
]

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
