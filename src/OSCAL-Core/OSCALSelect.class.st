Class {
	#name : #OSCALSelect,
	#superclass : #OSCALObject,
	#instVars : [
		'howMany',
		'alternatives'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALSelect >> alternatives [
	^ alternatives
]

{ #category : #accessing }
OSCALSelect >> alternatives: aCollection [
	alternatives := aCollection
]

{ #category : #accessing }
OSCALSelect >> howMany [
	^ howMany
]

{ #category : #accessing }
OSCALSelect >> howMany: aString [
	howMany := aString
]
