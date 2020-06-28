Class {
	#name : #OSCALParty,
	#superclass : #OSCALObject,
	#instVars : [
		'uuid',
		'type',
		'partyName',
		'shortName',
		'externalIds',
		'properties',
		'annotations',
		'links',
		'addresses',
		'emailAddresses',
		'telephoneNumbers',
		'memberOfOrganizations',
		'locationUuids',
		'remarks'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALParty class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #uuid) valueSchema: #'string-uuid'.
			(mapping mapInstVar: #type) valueSchema: #string.
			(mapping mapInstVar: #partyName to: 'party-name')
				valueSchema: #string.
			(mapping mapInstVar: #shortName to: 'short-name')
				valueSchema: #string.
			(mapping mapInstVar: #externalIds to: 'external-ids')
				valueSchema: #'array-of-external-id'.
			mapping mapOscalProperties.
			mapping mapOscalAnnotations.
			mapping mapOscalLinks.
			(mapping mapInstVar: #addresses) valueSchema: #'array-of-address'.
			(mapping mapInstVar: #emailAddresses to: 'email-addresses')
				valueSchema: #'array-of-email'.
			(mapping mapInstVar: #telephoneNumbers to: 'telephone-numbers')
				valueSchema: #'array-of-phone'.
			(mapping
				mapInstVar: #memberOfOrganizations
				to: 'member-of-organizations')
				valueSchema: #'array-of-member-of-organization'.
			(mapping mapInstVar: #locationUuids to: 'location-uuids')
				valueSchema: #'array-location-uuid'.
			mapping mapOscalRemarks ]
]

{ #category : #printing }
OSCALParty >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: type;
		nextPutAll: ' -> ';
		print: partyName;
		nextPut: $)
]
