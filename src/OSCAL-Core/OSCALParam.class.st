Class {
	#name : #OSCALParam,
	#superclass : #OSCALObject,
	#instVars : [
		'id',
		'oscalClass',
		'dependsOn',
		'label',
		'descriptions',
		'constraints',
		'guidance',
		'value',
		'select',
		'links'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALParam class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #id) valueSchema: #ncname.
			mapping mapOscalClass.
			(mapping mapInstVar: #dependsOn to: 'depends-on')
				valueSchema: #ncname.
			(mapping mapInstVar: #label) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #descriptions) valueSchema: #'array-of-usage'.
			(mapping mapInstVar: #constraints)
				valueSchema: #'array-of-constraint'.
			(mapping mapInstVar: #guidance) valueSchema: #'array-of-guideline'.
			(mapping mapInstVar: #value) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #select) valueSchema: OSCALSelect.
			(mapping mapInstVar: #links) valueSchema: #'array-of-link' ]
]

{ #category : #printing }
OSCALParam >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: id;
		nextPut: $)
]
