Class {
	#name : #OSCALAddress,
	#superclass : #OSCALObject,
	#instVars : [
		'type',
		'postalAddress',
		'city',
		'state',
		'postalCode',
		'country'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALAddress class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #type) valueSchema: #string.
			(mapping mapInstVar: #postalAddress to: 'postal-address')
				valueSchema: #'array-of-addr-line'.
			(mapping mapInstVar: #city) valueSchema: #string.
			(mapping mapInstVar: #state) valueSchema: #string.
			(mapping mapInstVar: #postalCode to: 'postal-code')
				valueSchema: #string.
			(mapping mapInstVar: #country) valueSchema: #string ]
]

{ #category : #accessing }
OSCALAddress >> city [
	^ city
]

{ #category : #accessing }
OSCALAddress >> city: aString [
	city := aString
]

{ #category : #accessing }
OSCALAddress >> country [
	^ country
]

{ #category : #accessing }
OSCALAddress >> country: aString [
	country := aString
]

{ #category : #'magritte-description' }
OSCALAddress >> descriptionCity [
	<magritteDescription>
	^ MAStringDescription new
		label: 'City' asMultilanguageString;
		comment: 'City, town or geographical region for mailing address';
		accessor: #city;
		beJsonMapped;
		priority: 30;
		yourself
]

{ #category : #'magritte-description' }
OSCALAddress >> descriptionCountry [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Country' asMultilanguageString;
		comment: 'Country for mailing address';
		accessor: #country;
		beJsonMapped;
		priority: 60;
		yourself
]

{ #category : #'magritte-description' }
OSCALAddress >> descriptionPostalAddresses [
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		label: 'Postal Addresses' asMultilanguageString;
		comment: 'A single line of an address.';
		accessor: #postalAddress;
		classes: (Array with: String);
		beJsonMapped;
		jsonProperty: 'postal-address';
		priority: 20;
		yourself
]

{ #category : #'magritte-description' }
OSCALAddress >> descriptionPostalCode [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Postal Code' asMultilanguageString;
		comment: 'Postal or ZIP code for mailing address';
		accessor: #postalCode;
		beJsonMapped;
		jsonProperty: 'postal-code';
		priority: 50;
		yourself
]

{ #category : #'magritte-description' }
OSCALAddress >> descriptionState [
	<magritteDescription>
	^ MAStringDescription new
		label: 'State' asMultilanguageString;
		comment: 'State, province or analogous geographical region for mailing address';
		accessor: #state;
		beJsonMapped;
		priority: 40;
		yourself
]

{ #category : #'magritte-description' }
OSCALAddress >> descriptionType [
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Type' asMultilanguageString;
		comment: 'Indicates the type of address.';
		accessor: #type;
		reference: String new;
		options: #('home' 'work');
		default: 'work';
		beJsonMapped;
		priority: 10;
		yourself
]

{ #category : #accessing }
OSCALAddress >> postalAddress [
	^ postalAddress
]

{ #category : #accessing }
OSCALAddress >> postalAddress: aCollection [
	postalAddress := aCollection
]

{ #category : #accessing }
OSCALAddress >> postalCode [
	^ postalCode
]

{ #category : #accessing }
OSCALAddress >> postalCode: aString [
	postalCode := aString
]

{ #category : #accessing }
OSCALAddress >> state [
	^ state
]

{ #category : #accessing }
OSCALAddress >> state: aString [
	state := aString
]

{ #category : #accessing }
OSCALAddress >> type [
	^ type
]

{ #category : #accessing }
OSCALAddress >> type: aString [
	type := aString
]
