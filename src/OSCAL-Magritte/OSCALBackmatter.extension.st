Extension { #name : #OSCALBackmatter }

{ #category : #'*OSCAL-Magritte' }
OSCALBackmatter >> descriptionResources [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Resources' asMultilanguageString;
		comment:
			'A resource associated with the present document, which may be a pointer to other data or a citation.';
		accessor: #resources;
		default: OrderedCollection new;
		classes: (Array with: OSCALResource);
		beJsonMapped;
		visibleInReport: false;
		yourself
]
