Extension { #name : #OSCALLink }

{ #category : #'*OSCAL-Magritte' }
OSCALLink >> descriptionHref [
	<magritteDescription>
	^ super descriptionHref
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALLink >> descriptionMediatype [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Media Type' asMultilanguageString;
		accessor: #mediaType;
		beJsonMapped;
		jsonProperty: 'media-type';
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALLink >> descriptionRel [
	<magritteDescription>
	^ MANcNameDescription new
		label: 'Rel' asMultilanguageString;
		accessor: #rel;
		beJsonMapped;
		priority: 30;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALLink >> descriptionText [
	<magritteDescription>
	^ super descriptionText
		priority: 10;
		yourself
]
