Class {
	#name : #OSCALParam,
	#superclass : #OSCALObject,
	#instVars : [
		'id',
		'oscalClass',
		'dependsOn',
		'label',
		'descriptions',
		'constraints',
		'guidance',
		'value',
		'select',
		'links'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALParam >> constraints [
	^ constraints
]

{ #category : #accessing }
OSCALParam >> constraints: aCollection [
	constraints := aCollection
]

{ #category : #accessing }
OSCALParam >> dependsOn [
	^ dependsOn
]

{ #category : #accessing }
OSCALParam >> dependsOn: aNCName [
	dependsOn := aNCName
]

{ #category : #accessing }
OSCALParam >> descriptions [
	^ descriptions
]

{ #category : #accessing }
OSCALParam >> descriptions: aCollection [
	descriptions := aCollection
]

{ #category : #accessing }
OSCALParam >> guidance [
	^ guidance
]

{ #category : #accessing }
OSCALParam >> guidance: aCollection [
	guidance := aCollection
]

{ #category : #accessing }
OSCALParam >> id [
	^ id
]

{ #category : #accessing }
OSCALParam >> id: aNCName [
	id := aNCName
]

{ #category : #accessing }
OSCALParam >> label [
	^ label
]

{ #category : #accessing }
OSCALParam >> label: aMarkupLine [
	label := aMarkupLine
]

{ #category : #accessing }
OSCALParam >> links [
	^ links
]

{ #category : #accessing }
OSCALParam >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALParam >> oscalClass [
	^ oscalClass
]

{ #category : #accessing }
OSCALParam >> oscalClass: aNCName [
	oscalClass := aNCName
]

{ #category : #accessing }
OSCALParam >> select [
	^ select
]

{ #category : #accessing }
OSCALParam >> select: anOSACLSelect [
	select := anOSACLSelect
]

{ #category : #accessing }
OSCALParam >> value [
	^ value
]

{ #category : #accessing }
OSCALParam >> value: aMarkupLine [
	value := aMarkupLine
]
