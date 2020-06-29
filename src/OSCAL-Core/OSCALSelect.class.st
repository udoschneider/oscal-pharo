Class {
	#name : #OSCALSelect,
	#superclass : #OSCALObject,
	#instVars : [
		'howMany',
		'alternatives'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALSelect class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #howMany to: 'how-many') valueSchema: #string.
			(mapping mapInstVar: #alternatives) valueSchema: #'array-of-choice' ]
]

{ #category : #accessing }
OSCALSelect >> alternatives [
	^ alternatives
]

{ #category : #accessing }
OSCALSelect >> alternatives: aCollection [
	alternatives := aCollection
]

{ #category : #'as yet unclassified' }
OSCALSelect >> descriptionAlternatives [
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		label: 'Alternatives' asMultilanguageString;
		comment: 'A value selection among several such options';
		accessor: #alternatives;
		classes: (Array with: MarkupLine);
		beJsonMapped;
		priority: 20;
		yourself
]

{ #category : #'as yet unclassified' }
OSCALSelect >> descriptionHowMany [
	<magritteDescription>
	^ MAStringDescription new
		label: 'How many' asMultilanguageString;
		comment: 'When selecting, a requirement such as one or more';
		accessor: #howMany;
		beJsonMapped;
		jsonProperty: 'how-many';
		yourself
]

{ #category : #accessing }
OSCALSelect >> howMany [
	^ howMany
]

{ #category : #accessing }
OSCALSelect >> howMany: aString [
	howMany := aString
]
