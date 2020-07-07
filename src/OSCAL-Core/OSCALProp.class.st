Class {
	#name : #OSCALProp,
	#superclass : #OSCALObject,
	#instVars : [
		'value',
		'name',
		'id',
		'ns',
		'oscalClass'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALProp >> id [
	^ id
]

{ #category : #accessing }
OSCALProp >> id: aNCName [
	id := aNCName
]

{ #category : #accessing }
OSCALProp >> name [
	^ name
]

{ #category : #accessing }
OSCALProp >> name: aNCName [
	name := aNCName
]

{ #category : #accessing }
OSCALProp >> ns [
	^ ns
]

{ #category : #accessing }
OSCALProp >> ns: aString [
	ns := aString
]

{ #category : #accessing }
OSCALProp >> oscalClass [
	^ oscalClass
]

{ #category : #accessing }
OSCALProp >> oscalClass: aNCName [
	oscalClass := aNCName
]

{ #category : #accessing }
OSCALProp >> value [
	^ value
]

{ #category : #accessing }
OSCALProp >> value1 [
	^ value
]

{ #category : #accessing }
OSCALProp >> value: anObject [
	value := anObject
]
