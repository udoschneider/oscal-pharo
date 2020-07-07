Extension { #name : #OSCALDocId }

{ #category : #'*OSCAL-Magritte' }
OSCALDocId >> descriptionIdentifier [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Identifier' asMultilanguageString;
		comment: 'A document identifier ';
		accessor: #identifier;
		beJsonMapped;
		priority: 10;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALDocId >> descriptionType [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type' asMultilanguageString;
		comment:
			'Indicating the type of identifier, address, email or other data item.';
		accessor: #type;
		beJsonMapped;
		priority: 20;
		yourself
]
