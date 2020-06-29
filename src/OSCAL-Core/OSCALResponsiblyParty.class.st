Class {
	#name : #OSCALResponsiblyParty,
	#superclass : #OSCALObject,
	#instVars : [
		'roleId',
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
