Class {
	#name : #OSCALDocId,
	#superclass : #OSCALObject,
	#instVars : [
		'identifier',
		'type'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALDocId >> identifier [
	^ identifier
]

{ #category : #accessing }
OSCALDocId >> identifier: aString [
	identifier := aString
]

{ #category : #accessing }
OSCALDocId >> type [
	^ type
]

{ #category : #accessing }
OSCALDocId >> type: aString [
	type := aString
]
