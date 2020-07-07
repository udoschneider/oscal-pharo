Extension { #name : #OSCALAddress }

{ #category : #'*OSCAL-Magritte' }
OSCALAddress >> descriptionCity [
	<magritteDescription>
	^ MAStringDescription new
		label: 'City' asMultilanguageString;
		comment: 'City, town or geographical region for mailing address';
		accessor: #city;
		default: '';
		beJsonMapped;
		priority: 30;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALAddress >> descriptionCountry [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Country' asMultilanguageString;
		comment: 'Country for mailing address';
		accessor: #country;
		default: '';
		beJsonMapped;
		priority: 60;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALAddress >> descriptionPostalAddresses [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Postal Addresses' asMultilanguageString;
		comment: 'A single line of an address.';
		accessor: #postalAddress;
		default: OrderedCollection new;
		classes: (Array with: String);
		reference: MAStringDescription new;
		beJsonMapped;
		jsonProperty: 'postal-address';
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALAddress >> descriptionPostalCode [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Postal Code' asMultilanguageString;
		comment: 'Postal or ZIP code for mailing address';
		accessor: #postalCode;
		default: '';
		beJsonMapped;
		jsonProperty: 'postal-code';
		priority: 50;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALAddress >> descriptionState [
	<magritteDescription>
	^ MAStringDescription new
		label: 'State' asMultilanguageString;
		comment: 'State, province or analogous geographical region for mailing address';
		accessor: #state;
		default: '';
		beJsonMapped;
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALAddress >> descriptionType [
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Type' asMultilanguageString;
		comment: 'Indicates the type of address.';
		accessor: #type;
		reference: String magritteTemplate magritteDescription;
		options: #('home' 'work');
		default: 'work';
		beJsonMapped;
		priority: 10;
		yourself
]
