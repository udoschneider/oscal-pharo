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
OSCALPart class >> configureClassMapper: mapper [
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

{ #category : #printing }
OSCALPart >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: (prose ifNil: [ '' ]);
		nextPut: $)
]
