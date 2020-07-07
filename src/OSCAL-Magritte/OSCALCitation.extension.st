Extension { #name : #OSCALCitation }

{ #category : #'*OSCAL-Magritte' }
OSCALCitation >> descriptionBiblio [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Biblio' asMultilanguageString;
		comment:
			'A container in which a set of bibliographic information can included. The model of this information is undefined by OSCAL.';
		accessor: #biblio;
		priority: 30;
		beJsonMapped;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALCitation >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALCitation >> descriptionText [
	<magritteDescription>
	^ super descriptionText
		priority: 10;
		yourself
]
