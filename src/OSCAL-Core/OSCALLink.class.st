Class {
	#name : #OSCALLink,
	#superclass : #OSCALObject,
	#instVars : [
		'text',
		'href',
		'mediaType',
		'rel'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALLink class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #text) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #href) valueSchema: #'uri-reference'.
			(mapping mapInstVar: #rel) valueSchema: #ncname.
			(mapping mapInstVar: #mediaType to: 'media-type')
				valueSchema: #string ]
]

{ #category : #printing }
OSCALLink >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: rel;
		nextPutAll: ' -> ';
		print: href;
		nextPut: $)
]
