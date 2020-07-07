Class {
	#name : #OSCALResponsiblyParty,
	#superclass : #OSCALObject,
	#instVars : [
		'partyUuids',
		'properties',
		'annotations',
		'links',
		'remarks'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALResponsiblyParty >> annotations [
	^ annotations
]

{ #category : #accessing }
OSCALResponsiblyParty >> annotations: aCollection [
	annotations := aCollection
]

{ #category : #accessing }
OSCALResponsiblyParty >> links [
	^ links
]

{ #category : #accessing }
OSCALResponsiblyParty >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALResponsiblyParty >> partyUuids [
	^ partyUuids
]

{ #category : #accessing }
OSCALResponsiblyParty >> partyUuids: aCollection [
	partyUuids := aCollection
]

{ #category : #accessing }
OSCALResponsiblyParty >> properties [
	^ properties
]

{ #category : #accessing }
OSCALResponsiblyParty >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALResponsiblyParty >> remarks [
	^ remarks
]

{ #category : #accessing }
OSCALResponsiblyParty >> remarks: aMarkupLine [
	remarks := aMarkupLine
]
