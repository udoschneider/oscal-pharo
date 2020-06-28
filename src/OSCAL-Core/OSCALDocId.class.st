Class {
	#name : #OSCALDocId,
	#superclass : #OSCALObject,
	#instVars : [
		'identifier',
		'type'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALDocId class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #identifier) valueSchema: #string.
			(mapping mapInstVar: #type) valueSchema: #string ]
]
