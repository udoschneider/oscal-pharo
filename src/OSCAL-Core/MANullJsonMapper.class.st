Class {
	#name : #MANullJsonMapper,
	#superclass : #MADescriptionJsonMapper,
	#category : #'OSCAL-Core'
}

{ #category : #testing }
MANullJsonMapper class >> isAbstract [
	^ false
]

{ #category : #testing }
MANullJsonMapper >> isNullMapper [
	^ true
]

{ #category : #'as yet unclassified' }
MANullJsonMapper >> mapToJsonMapper: aNeoJSONMapper [
	^ self
]
