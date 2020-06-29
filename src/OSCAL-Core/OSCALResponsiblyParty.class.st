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

{ #category : #'as yet unclassified' }
OSCALResponsiblyParty class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #roleId to: 'role-id') valueSchema: #ncname.
			(mapping mapInstVar: #partyUuids to: 'party-uuids')
				valueSchema: #'array-of-party-uuid'.
			mapping mapOscalProperties.
			mapping mapOscalAnnotations.
			mapping mapOscalLinks.
			mapping mapOscalRemarks ]
]

{ #category : #accessing }
OSCALResponsiblyParty >> annotations [
	^ annotations
]

{ #category : #accessing }
OSCALResponsiblyParty >> annotations: aCollection [
	annotations := aCollection
]

{ #category : #'magritte descriptions' }
OSCALResponsiblyParty >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 30;
		yourself
]

{ #category : #'magritte descriptions' }
OSCALResponsiblyParty >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 40;
		yourself
]

{ #category : #'magritte descriptions' }
OSCALResponsiblyParty >> descriptionPartyUuids [
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		label: 'Party UUIDs' asMultilanguageString;
		comment: 'References a party defined in metadata.';
		accessor: #partyUuids;
		classes: (Array with: UUID);
		beJsonMapped;
		jsonProperty: 'party-uuids';
		priority: 10;
		yourself
]

{ #category : #'magritte descriptions' }
OSCALResponsiblyParty >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 20;
		yourself
]

{ #category : #'magritte descriptions' }
OSCALResponsiblyParty >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 50;
		yourself
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
