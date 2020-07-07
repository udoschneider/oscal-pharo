Class {
	#name : #OSCALCitation,
	#superclass : #OSCALObject,
	#instVars : [
		'text',
		'properties',
		'biblio'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALCitation >> biblio [
	^ biblio
]

{ #category : #accessing }
OSCALCitation >> biblio: anObject [
	biblio := anObject
]

{ #category : #accessing }
OSCALCitation >> properties [
	^ properties
]

{ #category : #accessing }
OSCALCitation >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALCitation >> text [
	^ text
]

{ #category : #accessing }
OSCALCitation >> text: aMarkupLine [
	text := aMarkupLine
]
