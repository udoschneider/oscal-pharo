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
OSCALParty class >> mapToJsonMapper: mapper [
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

{ #category : #accessing }
OSCALParty >> addresses [
	^ addresses
]

{ #category : #accessing }
OSCALParty >> addresses: aCollection [
	addresses := aCollection
]

{ #category : #accessing }
OSCALParty >> annotations [
	^ annotations
]

{ #category : #accessing }
OSCALParty >> annotations: aCollection [
	annotations := aCollection
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionAddresses [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Addresses' asMultilanguageString;
		comment: 'A postal address.';
		accessor: #addresses;
		classes: (Array with: OSCALAddress);
		beJsonMapped;
		priority: 90;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 70;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionEmailAddresses [
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		label: 'E-Mail Addresses' asMultilanguageString;
		comment: 'Email address';
		accessor: #emailAddresses;
		classes: (Array with: String);
		beJsonMapped;
		jsonProperty: 'email-addresses';
		priority: 100;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionExternalIds [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'External IDs' asMultilanguageString;
		comment:
			'An identifier for a person (such as an ORCID) using a designated scheme.';
		accessor: #externalIds;
		classes: (Array with: OSCALExternalId);
		beJsonMapped;
		jsonProperty: 'external-ids';
		priority: 50;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 80;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionLocationUuids [
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		label: 'Location UUIDs' asMultilanguageString;
		comment: 'References a location defined in metadata.';
		accessor: #locationUuids;
		classes: (Array with: UUID);
		beJsonMapped;
		jsonProperty: 'location-uuids';
		priority: 130;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionMemberOfOrganizations [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Member of Organizations' asMultilanguageString;
		comment: 'Identifies that the containing object is a member of the organization associated with the provided UUID.';
		accessor: #memberOfOrganizations ;
		classes: (Array with: OSCALMemberOfOrganization);
		beJsonMapped;
		jsonProperty: 'member-of-organizations';
		priority: 120;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionPartyName [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Party Name' asMultilanguageString;
		comment: 'The full (legal) name of the party.';
		accessor: #partyName;
		beJsonMapped;
		jsonProperty: 'party-name';
		priority: 30;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 60;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 140;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionShortName [
	<magritteDescription>
	^ super descriptionShortName
		priority: 40;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionTelephoneNumbers [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Telephone Numbers' asMultilanguageString;
		comment: 'Contact number by telephone';
		accessor: #telephoneNumbers;
		classes: (Array with: OSCALPhone);
		beJsonMapped;
		jsonProperty: 'telephone-numbers';
		priority: 110;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionType [
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Type' asMultilanguageString;
		comment: 'A category describing the kind of party the object describes.';
		accessor: #type;
		reference: String new;
		options: #('person' 'organization');
		default: 'person';
		beJsonMapped;
		priority: 20;
		yourself
]

{ #category : #'magritte-description' }
OSCALParty >> descriptionUUID [
	<magritteDescription>
	^ super descriptionUUID
		priority: 10;
		yourself
]

{ #category : #accessing }
OSCALParty >> emailAddresses [
	^ emailAddresses
]

{ #category : #accessing }
OSCALParty >> emailAddresses: aCollection [
	emailAddresses := aCollection
]

{ #category : #accessing }
OSCALParty >> externalIds [
	^ externalIds
]

{ #category : #accessing }
OSCALParty >> externalIds: aCollection [
	externalIds := aCollection
]

{ #category : #accessing }
OSCALParty >> links [
	^ links
]

{ #category : #accessing }
OSCALParty >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALParty >> locationUuids [
	^ locationUuids
]

{ #category : #accessing }
OSCALParty >> locationUuids: aCollection [
	locationUuids := aCollection
]

{ #category : #accessing }
OSCALParty >> memberOfOrganizations [
	^ memberOfOrganizations
]

{ #category : #accessing }
OSCALParty >> memberOfOrganizations: aCollection [
	memberOfOrganizations := aCollection
]

{ #category : #accessing }
OSCALParty >> partyName [
	^ partyName
]

{ #category : #accessing }
OSCALParty >> partyName: aString [
	partyName := aString
]

{ #category : #accessing }
OSCALParty >> properties [
	^ properties
]

{ #category : #accessing }
OSCALParty >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALParty >> remarks [
	^ remarks
]

{ #category : #accessing }
OSCALParty >> remarks: anObject [
	remarks := anObject
]

{ #category : #accessing }
OSCALParty >> shortName [
	^ shortName
]

{ #category : #accessing }
OSCALParty >> shortName: aString [
	shortName := aString
]

{ #category : #accessing }
OSCALParty >> telephoneNumbers [
	^ telephoneNumbers
]

{ #category : #accessing }
OSCALParty >> telephoneNumbers: aCollection [
	telephoneNumbers := aCollection
]

{ #category : #accessing }
OSCALParty >> type [
	^ type
]

{ #category : #accessing }
OSCALParty >> type: aString [
	type := aString
]

{ #category : #accessing }
OSCALParty >> uuid [
	^ uuid
]

{ #category : #accessing }
OSCALParty >> uuid: aUUID [
	uuid := aUUID
]
