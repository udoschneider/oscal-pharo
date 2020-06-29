Class {
	#name : #MADescriptionJsonMapper,
	#superclass : #MAObject,
	#instVars : [
		'description',
		'property',
		'getter',
		'setter',
		'valueSchema',
		'mappedClass'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
MADescriptionJsonMapper >> description [
	^ description
]

{ #category : #'as yet unclassified' }
MADescriptionJsonMapper >> description: aMADescription [
	description := aMADescription
]

{ #category : #'as yet unclassified' }
MADescriptionJsonMapper >> getter [
	^ getter ifNil: [ description ifNotNil: [ description jsonGetter ] ]
]

{ #category : #testing }
MADescriptionJsonMapper >> isNullMapper [
	^ false
]

{ #category : #'as yet unclassified' }
MADescriptionJsonMapper >> mapToJsonMapper: aNeoJSONMapper [
	self subclassResponsibility
]

{ #category : #accessing }
MADescriptionJsonMapper >> mappedClass [
	^ mappedClass ifNil: [ self description jsonMappedClass ]
]

{ #category : #accessing }
MADescriptionJsonMapper >> mappedClass: aClass [
	mappedClass := aClass
]

{ #category : #'as yet unclassified' }
MADescriptionJsonMapper >> property [
	^ property
		ifNil: [ description ifNotNil: [ description jsonProperty ] ]
]

{ #category : #'as yet unclassified' }
MADescriptionJsonMapper >> setter [
	^ setter ifNil: [ description ifNotNil: [ description jsonSetter ] ]
]

{ #category : #'as yet unclassified' }
MADescriptionJsonMapper >> valueSchema [
	^ valueSchema
		ifNil: [ description ifNotNil: [ description jsonValueSchema ] ]
]

{ #category : #accessing }
MADescriptionJsonMapper >> valueSchema: anObject [
	valueSchema := anObject
]
