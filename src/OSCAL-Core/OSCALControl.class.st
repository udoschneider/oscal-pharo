Class {
	#name : #OSCALControl,
	#superclass : #OSCALObject,
	#instVars : [
		'id',
		'oscalClass',
		'title',
		'parameters',
		'properties',
		'annotations',
		'links',
		'parts',
		'controls'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALControl class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #id) valueSchema: #ncname.
			mapping mapOscalClass.
			(mapping mapInstVar: #title) valueSchema: #'string-markup-line'.
			mapping mapOscalParameters.
			mapping mapOscalProperties.
			mapping mapOscalAnnotations.
			mapping mapOscalLinks.
			mapping mapOscalParts.
			mapping mapOscalControls.
			self ]
]

{ #category : #printing }
OSCALControl >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: title;
		nextPut: $)
]
