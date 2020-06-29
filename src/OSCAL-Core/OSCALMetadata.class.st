Class {
	#name : #OSCALMetadata,
	#superclass : #OSCALObject,
	#instVars : [
		'title',
		'published',
		'lastModified',
		'version',
		'oscalVersion',
		'revisionHistory',
		'documentIds',
		'properties',
		'links',
		'roles',
		'locations',
		'parties',
		'responsibleParties',
		'remarks'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALMetadata class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #title) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #published)
				valueSchema: #'string-dateTime-with-timezone'.
			(mapping mapInstVar: #lastModified to: 'last-modified')
				valueSchema: #'string-dateTime-with-timezone'.
			(mapping mapInstVar: #version) valueSchema: #string.
			(mapping mapInstVar: #oscalVersion to: 'oscal-version')
				valueSchema: #string.
			(mapping mapInstVar: #revisionHistory to: 'revision-histor')
				valueSchema: #'array-of-revision'.
			mapping mapOscalDocumentIds.
			mapping mapOscalProperties.
			mapping mapOscalLinks.
			mapping mapOscalRoles.
			mapping mapOscalLocations.
			mapping mapOscalParties.
			mapping mapOscalResponsibleParties.
			mapping mapOscalRemarks.
			self ]
]

{ #category : #'magritte-description' }
OSCALMetadata >> descriptionDocumentIds [
	<magritteDescription>
	^ super descriptionDocumentIds
		priority: 70;
		yourself
]

{ #category : #'magritte-description' }
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

{ #category : #'magritte-description' }
OSCALMetadata >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 90;
		yourself
]

{ #category : #'magritte-description' }
OSCALMetadata >> descriptionLocations [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Locations' asMultilanguageString;
		comment: 'A location, with associated metadata that can be referenced.';
		accessor: #locations;
		priority: 110;
		classes: (Array with: OSCALLocation);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
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

{ #category : #'magritte-description' }
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
		yourself
]

{ #category : #'magritte-description' }
OSCALMetadata >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 80;
		yourself
]

{ #category : #'magritte-description' }
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

{ #category : #'magritte-description' }
OSCALMetadata >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 150;
		yourself
]

{ #category : #'magritte-description' }
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
		yourself
]

{ #category : #'magritte-description' }
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
		yourself
]

{ #category : #'magritte-description' }
OSCALMetadata >> descriptionRoles [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Roles' asMultilanguageString;
		comment: 'Defining a role to be assigned to a party';
		accessor: #roles;
		priority: 100;
		classes: (Array with: OSCALRole);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALMetadata >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 10;
		yourself
]

{ #category : #'magritte-description' }
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

{ #category : #accessing }
OSCALMetadata >> documentIds [
	^ documentIds
]

{ #category : #accessing }
OSCALMetadata >> documentIds: aCollection [
	documentIds := aCollection
]

{ #category : #accessing }
OSCALMetadata >> lastModified [
	^ lastModified
]

{ #category : #accessing }
OSCALMetadata >> lastModified: aDateAndTime [
	lastModified := aDateAndTime
]

{ #category : #accessing }
OSCALMetadata >> links [
	^ links
]

{ #category : #accessing }
OSCALMetadata >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALMetadata >> locations [
	^ locations
]

{ #category : #accessing }
OSCALMetadata >> locations: aCollection [
	locations := aCollection
]

{ #category : #accessing }
OSCALMetadata >> oscalVersion [
	^ oscalVersion
]

{ #category : #accessing }
OSCALMetadata >> oscalVersion: aCollection [
	oscalVersion := aCollection
]

{ #category : #accessing }
OSCALMetadata >> parties [
	^ parties
]

{ #category : #accessing }
OSCALMetadata >> parties: aCollection [
	parties := aCollection
]

{ #category : #accessing }
OSCALMetadata >> properties [
	^ properties
]

{ #category : #accessing }
OSCALMetadata >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALMetadata >> published [
	^ published
]

{ #category : #accessing }
OSCALMetadata >> published: aDateAndTime [
	published := aDateAndTime
]

{ #category : #accessing }
OSCALMetadata >> remarks [
	^ remarks
]

{ #category : #accessing }
OSCALMetadata >> remarks: aMarkupMultiline [
	remarks := aMarkupMultiline
]

{ #category : #accessing }
OSCALMetadata >> responsibleParties [
	^ responsibleParties
]

{ #category : #accessing }
OSCALMetadata >> responsibleParties: aCollection [
	responsibleParties := aCollection
]

{ #category : #accessing }
OSCALMetadata >> revisionHistory [
	^ revisionHistory
]

{ #category : #accessing }
OSCALMetadata >> revisionHistory: aCollection [
	revisionHistory := aCollection
]

{ #category : #accessing }
OSCALMetadata >> roles [
	^ roles
]

{ #category : #accessing }
OSCALMetadata >> roles: aCollection [
	roles := aCollection
]

{ #category : #accessing }
OSCALMetadata >> title [
	^ title
]

{ #category : #accessing }
OSCALMetadata >> title: aMarkupLine [
	title := aMarkupLine
]

{ #category : #accessing }
OSCALMetadata >> version [
	^ version
]

{ #category : #accessing }
OSCALMetadata >> version: aString [
	version := aString
]
