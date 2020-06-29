Class {
	#name : #OSCALRlink,
	#superclass : #OSCALObject,
	#instVars : [
		'href',
		'mediaType',
		'hashes'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALRlink class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #href) valueSchema: #'uri-reference'.
			(mapping mapInstVar: #mediaType to: 'media-type')
				valueSchema: #string.
			(mapping mapInstVar: #hashes) valueSchema: #'array-of-hash' ]
]

{ #category : #'as yet unclassified' }
OSCALRlink >> descriptionHashes [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Hashes' asMultilanguageString;
		comment:
			'A representation of a cryptographic digest generated over a resource using a hash algorithm.';
		accessor: #hashes;
		classes: (Array with: OSCALHash);
		beJsonMapped;
		priority: 30;
		yourself
]

{ #category : #'as yet unclassified' }
OSCALRlink >> descriptionHref [
	<magritteDescription>
	^ super descriptionHref
		priority: 10;
		yourself
]

{ #category : #'as yet unclassified' }
OSCALRlink >> descriptionMediaType [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Media Type' asMultilanguageString;
		comment: 'Describes the media type of the linked resource';
		accessor: #mediaType;
		beJsonMapped;
		jsonProperty: 'media-type';
		priority: 20;
		yourself
]

{ #category : #accessing }
OSCALRlink >> hashes [
	^ hashes
]

{ #category : #accessing }
OSCALRlink >> hashes: aCollection [
	hashes := aCollection
]

{ #category : #accessing }
OSCALRlink >> href [
	^ href
]

{ #category : #accessing }
OSCALRlink >> href: aUrl [
	href := aUrl
]

{ #category : #accessing }
OSCALRlink >> mediaType [
	^ mediaType
]

{ #category : #accessing }
OSCALRlink >> mediaType: aString [
	mediaType := aString
]
