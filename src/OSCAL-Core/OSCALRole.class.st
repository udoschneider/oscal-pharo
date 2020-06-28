Class {
	#name : #OSCALRole,
	#superclass : #OSCALObject,
	#instVars : [
		'id',
		'title',
		'shortName',
		'description',
		'properties',
		'annotations',
		'links',
		'remarks'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALRole class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #id) valueSchema: #ncname.
			(mapping mapInstVar: #title) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #shortName to: 'short-name')
				valueSchema: #string.
			(mapping mapInstVar: #description to: 'desc') valueSchema: #string.
			mapping mapOscalProperties.
			mapping mapOscalAnnotations.
			mapping mapOscalLinks.
			mapping mapOscalRemarks ]
]

{ #category : #printing }
OSCALRole >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: id;
		nextPutAll: ' -> ';
		nextPutAll: title;
		nextPut: $)
]
