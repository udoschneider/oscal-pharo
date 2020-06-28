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
OSCALAddress class >> configureClassMapper: mapper [
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
