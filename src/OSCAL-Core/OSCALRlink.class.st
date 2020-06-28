Class {
	#name : #OSCALRlink,
	#superclass : #OSCALObject,
	#instVars : [
		'href',
		'mediaType',
		'hashes'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALRlink class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #href) valueSchema: #'uri-reference'.
			(mapping mapInstVar: #mediaType to: 'media-type')
				valueSchema: #string.
			(mapping mapInstVar: #hashes) valueSchema: #'array-of-hash' ]
]

{ #category : #printing }
OSCALRlink >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		print: href;
		nextPut: $)
]
