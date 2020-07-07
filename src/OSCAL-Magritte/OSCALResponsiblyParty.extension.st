Extension { #name : #OSCALResponsiblyParty }

{ #category : #'*OSCAL-Magritte' }
OSCALResponsiblyParty >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 30;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALResponsiblyParty >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
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

{ #category : #'*OSCAL-Magritte' }
OSCALResponsiblyParty >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALResponsiblyParty >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 50;
		yourself
]
