Class {
	#name : #OSCALGroup,
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
		'groups',
		'controls'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALGroup class >> configureClassMapper: mapper [
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
			mapping mapOscalGroups.
			mapping mapOscalControls.
			self ]
]

{ #category : #printing }
OSCALGroup >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: title;
		nextPut: $)
]
