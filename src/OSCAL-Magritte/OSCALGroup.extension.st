Extension { #name : #OSCALGroup }

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionAnnotations [
	<magritteDescription>
	^ super descriptionAnnotations
		priority: 60;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionControls [
	<magritteDescription>
	^ super descriptionControls
		priority: 100;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionGroups [
	<magritteDescription>
	^ super descriptionGroups
		priority: 90;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 70;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionParameters [
	<magritteDescription>
	^ super descriptionParameters
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionParts [
	<magritteDescription>
	^ super descriptionParts
		priority: 80;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionProperties [
	<magritteDescription>
	^ super descriptionProperties
		priority: 50;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALGroup >> descriptionTitle [
	<magritteDescription>
	^ super descriptionTitle
		priority: 30;
		yourself
]
