Extension { #name : #OSCALRole }

{ #category : #'*OSCAL-Magritte' }
OSCALRole >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 60;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALRole >> descriptionDesc [
	<magritteDescription>
	^ super descriptionDesc
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALRole >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALRole >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 70;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALRole >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 50;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALRole >> descriptionRemarks [
	<magritteDescription>
	^ super descriptionRemarks
		priority: 80;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALRole >> descriptionShortName [
	<magritteDescription>
	^ super descriptionShortName
		priority: 30;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALRole >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 20;
		yourself
]
