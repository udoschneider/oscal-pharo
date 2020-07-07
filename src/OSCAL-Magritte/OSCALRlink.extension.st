Extension { #name : #OSCALRlink }

{ #category : #'*OSCAL-Magritte' }
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

{ #category : #'*OSCAL-Magritte' }
OSCALRlink >> descriptionHref [
	<magritteDescription>
	^ super descriptionHref
		priority: 10;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
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
