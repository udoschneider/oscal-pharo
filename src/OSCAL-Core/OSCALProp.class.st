Class {
	#name : #OSCALProp,
	#superclass : #OSCALObject,
	#instVars : [
		'value',
		'name',
		'id',
		'ns',
		'oscalClass'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALProp class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			mapping mapInstVar: #value.
			(mapping mapInstVar: #name) valueSchema: #ncname.
			(mapping mapInstVar: #id) valueSchema: #ncname.
			(mapping mapInstVar: #ns) valueSchema: #string.
			mapping mapOscalClass ]
]

{ #category : #'acessing-magritte' }
OSCALProp >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 50;
		yourself
]

{ #category : #'acessing-magritte' }
OSCALProp >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 30;
		yourself
]

{ #category : #'acessing-magritte' }
OSCALProp >> descriptionName [
	<magritteDescription>
	^ super descriptionName
		priority: 20;
		yourself
]

{ #category : #'acessing-magritte' }
OSCALProp >> descriptionNs [
	<magritteDescription>
	^ super descriptionNs
		priority: 40;
		yourself
]

{ #category : #'acessing-magritte' }
OSCALProp >> descriptionValue [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Value' asMultilanguageString;
		accessor: #value;
		priority: 10;
		beJsonMapped;
		yourself
]

{ #category : #accessing }
OSCALProp >> id [
	^ id
]

{ #category : #accessing }
OSCALProp >> id: aNCName [
	id := aNCName
]

{ #category : #accessing }
OSCALProp >> name [
	^ name
]

{ #category : #accessing }
OSCALProp >> name: aNCName [
	name := aNCName
]

{ #category : #accessing }
OSCALProp >> ns [
	^ ns
]

{ #category : #accessing }
OSCALProp >> ns: aString [
	ns := aString
]

{ #category : #accessing }
OSCALProp >> oscalClass [
	^ oscalClass
]

{ #category : #accessing }
OSCALProp >> oscalClass: aNCName [
	oscalClass := aNCName
]

{ #category : #accessing }
OSCALProp >> value [
	^ value
]

{ #category : #accessing }
OSCALProp >> value1 [
	^ value
]

{ #category : #accessing }
OSCALProp >> value: anObject [
	value := anObject
]
