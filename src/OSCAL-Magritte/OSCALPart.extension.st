Extension { #name : #OSCALPart }

{ #category : #'*OSCAL-Magritte' }
OSCALPart >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALPart >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALPart >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 90;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALPart >> descriptionName [
	<magritteDescription>
	^ super descriptionName
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALPart >> descriptionNs [
	<magritteDescription>
	^ super descriptionNs
		priority: 30;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALPart >> descriptionParts [
	<magritteDescription>
	^ super descriptionParts
		priority: 80;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALPart >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 60;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALPart >> descriptionProse [
	<magritteDescription>
	^ MAMarkupMultiLineDescription new
		label: 'Prose' asMultilanguageString;
		comment: 'Prose permits multiple paragraphs, lists, tables etc.';
		accessor: #prose;
		beJsonMapped;
		priority: 70;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALPart >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 50;
		yourself
]
