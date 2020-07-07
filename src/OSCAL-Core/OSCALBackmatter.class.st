Class {
	#name : #OSCALBackmatter,
	#superclass : #OSCALObject,
	#instVars : [
		'resources'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALBackmatter >> resources [
	^ resources
]

{ #category : #accessing }
OSCALBackmatter >> resources: aCollection [
	resources := aCollection
]
