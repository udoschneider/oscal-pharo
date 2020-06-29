Class {
	#name : #OSCALDocId,
	#superclass : #OSCALObject,
	#instVars : [
		'identifier',
		'type'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALDocId class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #identifier) valueSchema: #string.
			(mapping mapInstVar: #type) valueSchema: #string ]
]

{ #category : #'magritte-description' }
OSCALDocId >> descriptionIdentifier [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Identifier' asMultilanguageString;
		comment: 'A document identifier ';
		accessor: #identifier;
		beJsonMapped;
		priority: 10;
		yourself
]

{ #category : #'magritte-description' }
OSCALDocId >> descriptionType [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type' asMultilanguageString;
		comment:
			'Indicating the type of identifier, address, email or other data item.';
		accessor: #type;
		beJsonMapped;
		priority: 20;
		yourself
]

{ #category : #accessing }
OSCALDocId >> identifier [
	^ identifier
]

{ #category : #accessing }
OSCALDocId >> identifier: aString [
	identifier := aString
]

{ #category : #accessing }
OSCALDocId >> type [
	^ type
]

{ #category : #accessing }
OSCALDocId >> type: aString [
	type := aString
]
