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
OSCALProp class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			mapping mapInstVar: #value.
			(mapping mapInstVar: #name) valueSchema: #ncname.
			(mapping mapInstVar: #id) valueSchema: #ncname.
			(mapping mapInstVar: #ns) valueSchema: #string.
			mapping mapOscalClass ]
]

{ #category : #printing }
OSCALProp >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: name;
		nextPutAll: ' -> ';
		nextPutAll: value;
		nextPut: $)
]
