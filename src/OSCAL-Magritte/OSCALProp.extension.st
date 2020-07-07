Extension { #name : #OSCALProp }

{ #category : #'*OSCAL-Magritte' }
OSCALProp >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 50;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALProp >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 30;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALProp >> descriptionName [
	<magritteDescription>
	^ super descriptionName
		priority: 10;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALProp >> descriptionNs [
	<magritteDescription>
	^ super descriptionNs
		priority: 40;
		visibleInReport: false;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALProp >> descriptionValue [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Value' asMultilanguageString;
		accessor: #value;
		priority: 20;
		beJsonMapped;
		yourself
]
