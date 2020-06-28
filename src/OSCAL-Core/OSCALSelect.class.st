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
OSCALSelect class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #howMany to: 'how-many') valueSchema: #string.
			(mapping mapInstVar: #alternatives) valueSchema: #'array-of-choice' ]
]

{ #category : #'as yet unclassified' }
OSCALSelect >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(.
	howMany
		ifNotNil: [ :countString | 
			aStream
				nextPutAll: countString;
				nextPutAll: ' of ' ].
	alternatives
		do: [ :alternative | aStream nextPutAll: alternative trim ]
		separatedBy: [ aStream nextPut: $/ ].
	aStream nextPut: $)
]
