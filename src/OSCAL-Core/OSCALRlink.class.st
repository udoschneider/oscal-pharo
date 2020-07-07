Class {
	#name : #OSCALRlink,
	#superclass : #OSCALObject,
	#instVars : [
		'href',
		'mediaType',
		'hashes'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALRlink >> hashes [
	^ hashes
]

{ #category : #accessing }
OSCALRlink >> hashes: aCollection [
	hashes := aCollection
]

{ #category : #accessing }
OSCALRlink >> href [
	^ href
]

{ #category : #accessing }
OSCALRlink >> href: aUrl [
	href := aUrl
]

{ #category : #accessing }
OSCALRlink >> mediaType [
	^ mediaType
]

{ #category : #accessing }
OSCALRlink >> mediaType: aString [
	mediaType := aString
]
