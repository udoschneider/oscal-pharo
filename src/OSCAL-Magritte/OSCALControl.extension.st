Extension { #name : #OSCALControl }

{ #category : #'*OSCAL-Magritte' }
OSCALControl >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 60;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALControl >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALControl >> descriptionControls [
	<magritteDescription>
	^ super descriptionControls
		priority: 90;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALControl >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALControl >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 70;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALControl >> descriptionParameters [
	<magritteDescription>
	^ super descriptionParameters
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALControl >> descriptionParts [
	<magritteDescription>
	^ super descriptionParts
		priority: 80;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALControl >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 50;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALControl >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 30;
		yourself
]
