Extension { #name : #OSCALParty }

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionAddresses [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Addresses' asMultilanguageString;
		comment: 'A postal address.';
		accessor: #addresses;
		default: OrderedCollection new;
		classes: (Array with: OSCALAddress);
		beJsonMapped;
		priority: 90;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 70;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionEmailAddresses [
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		label: 'E-Mail Addresses' asMultilanguageString;
		comment: 'Email address';
		accessor: #emailAddresses;
		default: OrderedCollection new;
		classes: (Array with: String);
		reference: MAStringDescription new;
		beJsonMapped;
		jsonProperty: 'email-addresses';
		priority: 100;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionExternalIds [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'External IDs' asMultilanguageString;
		comment:
			'An identifier for a person (such as an ORCID) using a designated scheme.';
		accessor: #externalIds;
		default: OrderedCollection new;
		classes: (Array with: OSCALExternalId);
		beJsonMapped;
		jsonProperty: 'external-ids';
		priority: 50;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 80;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionLocationUuids [
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		label: 'Location UUIDs' asMultilanguageString;
		comment: 'References a location defined in metadata.';
		accessor: #locationUuids;
		default: OrderedCollection new;
		classes: (Array with: UUID);
		beJsonMapped;
		jsonProperty: 'location-uuids';
		priority: 130;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionMemberOfOrganizations [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Member of Organizations' asMultilanguageString;
		comment:
			'Identifies that the containing object is a member of the organization associated with the provided UUID.';
		accessor: #memberOfOrganizations;
		default: OrderedCollection new;
		classes: (Array with: OSCALMemberOfOrganization);
		beJsonMapped;
		jsonProperty: 'member-of-organizations';
		priority: 120;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionPartyName [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Party Name' asMultilanguageString;
		comment: 'The full (legal) name of the party.';
		accessor: #partyName;
		default: String new;
		beJsonMapped;
		jsonProperty: 'party-name';
		priority: 30;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 60;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 140;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionShortName [
	<magritteDescription>
	^ super descriptionShortName
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionTelephoneNumbers [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Telephone Numbers' asMultilanguageString;
		comment: 'Contact number by telephone';
		accessor: #telephoneNumbers;
		default: OrderedCollection new;
		classes: (Array with: OSCALPhone);
		beJsonMapped;
		jsonProperty: 'telephone-numbers';
		priority: 110;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionType [
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Type' asMultilanguageString;
		comment: 'A category describing the kind of party the object describes.';
		accessor: #type;
		reference: String magritteTemplate magritteDescription;
		optionsAndLabels:
			{('person' -> 'Person').
			('organization' -> 'Organization')};
		default: 'person';
		beJsonMapped;
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParty >> descriptionUUID [
	<magritteDescription>
	^ super descriptionUUID
		priority: 10;
		yourself
]
