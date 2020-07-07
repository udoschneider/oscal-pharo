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

{ #category : #accessing }
OSCALLink >> href [
	^ href
]

{ #category : #accessing }
OSCALLink >> href: anUrl [
	href := anUrl
]

{ #category : #accessing }
OSCALLink >> mediaType [
	^ mediaType
]

{ #category : #accessing }
OSCALLink >> mediaType: aString [
	mediaType := aString
]

{ #category : #accessing }
OSCALLink >> rel [
	^ rel
]

{ #category : #accessing }
OSCALLink >> rel: aNCName [
	rel := aNCName
]

{ #category : #accessing }
OSCALLink >> text [
	^ text
]

{ #category : #accessing }
OSCALLink >> text: aMarkupLine [
	text := aMarkupLine
]
