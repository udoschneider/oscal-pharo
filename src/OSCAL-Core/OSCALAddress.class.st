Class {
	#name : #OSCALAddress,
	#superclass : #OSCALObject,
	#instVars : [
		'type',
		'postalAddress',
		'city',
		'state',
		'postalCode',
		'country'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALAddress >> city [
	^ city
]

{ #category : #accessing }
OSCALAddress >> city: aString [
	city := aString
]

{ #category : #accessing }
OSCALAddress >> country [
	^ country
]

{ #category : #accessing }
OSCALAddress >> country: aString [
	country := aString
]

{ #category : #accessing }
OSCALAddress >> postalAddress [
	^ postalAddress
]

{ #category : #accessing }
OSCALAddress >> postalAddress: aCollection [
	postalAddress := aCollection
]

{ #category : #accessing }
OSCALAddress >> postalCode [
	^ postalCode
]

{ #category : #accessing }
OSCALAddress >> postalCode: aString [
	postalCode := aString
]

{ #category : #accessing }
OSCALAddress >> state [
	^ state
]

{ #category : #accessing }
OSCALAddress >> state: aString [
	state := aString
]

{ #category : #accessing }
OSCALAddress >> type [
	^ type
]

{ #category : #accessing }
OSCALAddress >> type: aString [
	type := aString
]
