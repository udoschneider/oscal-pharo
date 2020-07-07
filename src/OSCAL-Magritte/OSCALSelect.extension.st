Extension { #name : #OSCALSelect }

{ #category : #'*OSCAL-Magritte' }
OSCALSelect >> descriptionAlternatives [
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		label: 'Alternatives' asMultilanguageString;
		comment: 'A value selection among several such options';
		accessor: #alternatives;
		classes: (Array with: MarkupLine);
		beJsonMapped;
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALSelect >> descriptionHowMany [
	<magritteDescription>
	^ MAStringDescription new
		label: 'How many' asMultilanguageString;
		comment: 'When selecting, a requirement such as one or more';
		accessor: #howMany;
		beJsonMapped;
		jsonProperty: 'how-many';
		yourself
]
