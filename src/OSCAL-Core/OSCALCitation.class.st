Class {
	#name : #OSCALCitation,
	#superclass : #OSCALObject,
	#instVars : [
		'text',
		'properties',
		'biblio'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALCitation class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #text) valueSchema: #'string-markup-line'.
			mapping mapOscalProperties.
			mapping mapInstVar: #biblio ]
]

{ #category : #accessing }
OSCALCitation >> biblio [
	^ biblio
]

{ #category : #accessing }
OSCALCitation >> biblio: anObject [
	biblio := anObject
]

{ #category : #'as yet unclassified' }
OSCALCitation >> descriptionBiblio [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Biblio' asMultilanguageString;
		comment:
			'A container in which a set of bibliographic information can included. The model of this information is undefined by OSCAL.';
		accessor: #biblio;
		priority: 30;
		beJsonMapped;
		yourself
]

{ #category : #'as yet unclassified' }
OSCALCitation >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 20;
		yourself
]

{ #category : #'as yet unclassified' }
OSCALCitation >> descriptionText [
	<magritteDescription>
	^ super descriptionText
		priority: 10;
		yourself
]

{ #category : #accessing }
OSCALCitation >> properties [
	^ properties
]

{ #category : #accessing }
OSCALCitation >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALCitation >> text [
	^ text
]

{ #category : #accessing }
OSCALCitation >> text: aMarkupLine [
	text := aMarkupLine
]
