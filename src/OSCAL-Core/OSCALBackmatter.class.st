Class {
	#name : #OSCALBackmatter,
	#superclass : #OSCALObject,
	#instVars : [
		'resources'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALBackmatter class >> configureClassMapper: mapper [
	mapper for: self do: [ :mapping | mapping mapOscalResources ]
]
