Class {
	#name : #OSCALResource,
	#superclass : #OSCALObject,
	#instVars : [
		'uuid',
		'title',
		'desc',
		'parties',
		'properties',
		'documentIds',
		'citation',
		'rlinks',
		'attachments',
		'remarks'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALResource class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			mapping mapOscalUuid.
			(mapping mapInstVar: #title) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #desc) valueSchema: #string.
			mapping mapOscalParties.
			mapping mapOscalDocumentIds.
			(mapping mapInstVar: #citation) valueSchema: OSCALCitation.
			(mapping mapInstVar: #rlinks) valueSchema: #'array-of-rlinks'.
			(mapping mapInstVar: #attachments) valueSchema: #'array-of-base64'.
			mapping mapOscalRemarks ]
]

{ #category : #accessing }
OSCALResource >> attachments [
	^ attachments
]

{ #category : #accessing }
OSCALResource >> attachments: aCollection [
	attachments := aCollection
]

{ #category : #accessing }
OSCALResource >> citation [
	^ citation
]

{ #category : #accessing }
OSCALResource >> citation: anOSCALCitation [
	citation := anOSCALCitation
]

{ #category : #accessing }
OSCALResource >> desc [
	^ desc
]

{ #category : #accessing }
OSCALResource >> desc: aString [
	desc := aString
]

{ #category : #'magritte-description' }
OSCALResource >> descriptionAttachments [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Attachments' asMultilanguageString;
		accessor: #attachments;
		classes: (Array with: OSCALBase64);
		beJsonMapped;
		priority: 80;
		yourself
]

{ #category : #'magritte-description' }
OSCALResource >> descriptionCitation [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Citation' asMultilanguageString;
		comment:
			'A citation consisting of end note text and optional structured bibliographic data.';
		accessor: #citation;
		classes: (Array with: OSCALCitation);
		beJsonMapped;
		priority: 60;
		yourself
]

{ #category : #'magritte-description' }
OSCALResource >> descriptionDesc [
	<magritteDescription>
	^ super descriptionDesc
		priority: 30;
		yourself
]

{ #category : #'magritte-description' }
OSCALResource >> descriptionDocumentIds [
	<magritteDescription>
	^ super descriptionDocumentIds
		priority: 50;
		yourself
]

{ #category : #'magritte-description' }
OSCALResource >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 40;
		yourself
]

{ #category : #'magritte-description' }
OSCALResource >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 90;
		yourself
]

{ #category : #'magritte-description' }
OSCALResource >> descriptionRlinks [
	<magritteDescription>
	^ super descriptionRlinks
		priority: 70;
		yourself
]

{ #category : #'magritte-description' }
OSCALResource >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 20;
		yourself
]

{ #category : #'magritte-description' }
OSCALResource >> descriptionUUID [
	<magritteDescription>
	^ super descriptionUUID
		priority: 10;
		yourself
]

{ #category : #accessing }
OSCALResource >> documentIds [
	^ documentIds
]

{ #category : #accessing }
OSCALResource >> documentIds: aCollection [
	documentIds := aCollection
]

{ #category : #accessing }
OSCALResource >> parties [
	^ parties
]

{ #category : #accessing }
OSCALResource >> parties: aCollection [
	parties := aCollection
]

{ #category : #accessing }
OSCALResource >> properties [
	^ properties
]

{ #category : #accessing }
OSCALResource >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALResource >> remarks [
	^ remarks
]

{ #category : #accessing }
OSCALResource >> remarks: aMarkupMultiline [
	remarks := aMarkupMultiline
]

{ #category : #accessing }
OSCALResource >> rlinks [
	^ rlinks
]

{ #category : #accessing }
OSCALResource >> rlinks: aCollection [
	rlinks := aCollection
]

{ #category : #accessing }
OSCALResource >> title [
	^ title
]

{ #category : #accessing }
OSCALResource >> title: aMarkupLine [
	title := aMarkupLine
]

{ #category : #accessing }
OSCALResource >> uuid [
	^ uuid
]

{ #category : #accessing }
OSCALResource >> uuid: aUUID [
	uuid := aUUID
]
