Extension { #name : #OSCALResource }

{ #category : #'*OSCAL-Magritte' }
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

{ #category : #'*OSCAL-Magritte' }
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

{ #category : #'*OSCAL-Magritte' }
OSCALResource >> descriptionDesc [
	<magritteDescription>
	^ super descriptionDesc
		priority: 30;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALResource >> descriptionDocumentIds [
	<magritteDescription>
	^ super descriptionDocumentIds
		priority: 50;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALResource >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALResource >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 90;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALResource >> descriptionRlinks [
	<magritteDescription>
	^ super descriptionRlinks
		priority: 70;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALResource >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALResource >> descriptionUUID [
	<magritteDescription>
	^ super descriptionUUID
		priority: 10;
		yourself
]
