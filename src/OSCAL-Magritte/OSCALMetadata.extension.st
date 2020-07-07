Extension { #name : #OSCALMetadata }

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionDocumentIds [
	<magritteDescription>
	^ super descriptionDocumentIds
		priority: 70;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionLastModified [
	<magritteDescription>
	^ MADateAndTimeDescription new
		label: 'Last Modified' asMultilanguageString;
		comment: 'Date and time of last modification.';
		accessor: #lastModified;
		priority: 30;
		beJsonMapped;
		jsonProperty: 'last-modified';
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 90;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionLocations [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Locations' asMultilanguageString;
		comment: 'A location, with associated metadata that can be referenced.';
		accessor: #locations;
		priority: 110;
		classes: (Array with: OSCALLocation);
		beJsonMapped;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionOscalVersion [
	<magritteDescription>
	^ MAStringDescription new
		label: 'OSCAL Version' asMultilanguageString;
		comment: 'OSCAL model version.';
		accessor: #oscalVersion;
		priority: 50;
		beJsonMapped;
		jsonProperty: 'oscal-version';
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionParties [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Parties' asMultilanguageString;
		comment:
			'A responsible entity, either singular (an organization or person) or collective (multiple persons)';
		accessor: #parties;
		priority: 120;
		classes: (Array with: OSCALParty);
		beJsonMapped;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 80;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionPublished [
	<magritteDescription>
	^ MADateAndTimeDescription new
		label: 'Published' asMultilanguageString;
		comment: 'The date and time this document was published.';
		accessor: #published;
		priority: 20;
		beJsonMapped;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 150;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionResponsibleParties [
	<magritteDescription>
	^ MAMapDescription new
		label: 'Responsible Parties' asMultilanguageString;
		comment:
			'A reference to a set of organizations or persons that have responsibility for performing a referenced role relative to the parent context.';
		accessor: #responsibleParties;
		priority: 130;
		classes: (Array with: OSCALResponsiblyParty);
		beJsonMapped;
		jsonProperty: 'responsible-parties';
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionRevisionHistory [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Revision History' asMultilanguageString;
		comment:
			'An entry in a sequential list of revisions to the containing document in reverse chronological order (i.e., most recent previous revision';
		accessor: #revisionHistory;
		priority: 60;
		classes: (Array with: OSCALRevision);
		beJsonMapped;
		jsonProperty: 'revision-history';
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionRoles [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Roles' asMultilanguageString;
		comment: 'Defining a role to be assigned to a party';
		accessor: #roles;
		priority: 100;
		classes: (Array with: OSCALRole);
		beJsonMapped;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 10;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALMetadata >> descriptionVersion [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Version' asMultilanguageString;
		comment: 'The version of the document content.';
		accessor: #version;
		priority: 40;
		beJsonMapped;
		yourself
]
