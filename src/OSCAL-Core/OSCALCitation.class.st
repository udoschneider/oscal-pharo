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
OSCALCitation class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #text) valueSchema: #'string-markup-line'.
			mapping mapOscalProperties.
			mapping mapInstVar: #biblio ]
]

{ #category : #printing }
OSCALCitation >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: text;
		nextPut: $)
]
