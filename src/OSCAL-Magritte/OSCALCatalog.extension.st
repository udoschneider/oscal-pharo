Extension { #name : #OSCALCatalog }

{ #category : #'*OSCAL-Magritte' }
OSCALCatalog >> descriptionBackmatter [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Backmatter' asMultilanguageString;
		comment: 'Back matter including references and resources.';
		accessor: #backmatter;
		default: OSCALBackmatter new;
		priority: 70;
		classes: (Array with: OSCALBackmatter);
		beJsonMapped;
		jsonProperty: 'back-matter';
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALCatalog >> descriptionControls [
	<magritteDescription>
	^ super descriptionControls
		priority: 40;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALCatalog >> descriptionGroups [
	<magritteDescription>
	^ super descriptionGroups
		priority: 50;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALCatalog >> descriptionMetadata [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Metadata' asMultilanguageString;
		comment:
			'Provides information about the publication and availability of the containing document.';
		accessor: #metadata;
		default: OSCALMetadata new;
		priority: 20;
		classes: (Array with: OSCALMetadata);
		beJsonMapped;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALCatalog >> descriptionParameters [
	<magritteDescription>
	^ super descriptionParameters
		priority: 30;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALCatalog >> descriptionUUID [
	<magritteDescription>
	^ super descriptionUUID
		priority: 10;
		visibleInReport: false;
		yourself
]
