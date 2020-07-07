Extension { #name : #OSCALParam }

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 20;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionConstraints [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Constraints' asMultilanguageString;
		comment: 'A formal or informal expression of a constraint or test';
		accessor: #constraints;
		classes: (Array with: OSCALConstraint);
		beJsonMapped;
		priority: 60;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionDependsOn [
	<magritteDescription>
	^ MANcNameDescription new
		label: 'Depends On' asMultilanguageString;
		comment: 'Another parameter invoking this one';
		accessor: #dependsOn;
		beJsonMapped;
		jsonProperty: 'depends-on';
		priority: 30;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionDescriptions [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Descriptions' asMultilanguageString;
		comment: 'Indicates and explains the purpose and use of a parameter';
		accessor: #descriptions;
		classes: (Array with: OSCALUsage);
		beJsonMapped;
		priority: 50;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionGuidance [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Guidance' asMultilanguageString;
		comment:
			'A prose statement that provides a recommendation for the use of a parameter.';
		accessor: #guidance;
		classes: (Array with: OSCALGuideline);
		beJsonMapped;
		priority: 70;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionLabel [
	<magritteDescription>
	^ MAMarkupLineDescription new
		label: 'Label' asMultilanguageString;
		comment: 'A placeholder for a missing value, in display.';
		accessor: #label;
		beJsonMapped;
		priority: 40;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 100;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionSelect [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Select' asMultilanguageString;
		comment:
			'A set of parameter value choices, that may be picked from to set the parameter value.';
		accessor: #select;
		priority: 90;
		classes: (Array with: OSCALSelect);
		beJsonMapped;
		yourself
]

{ #category : #'*OSCAL-Magritte' }
OSCALParam >> descriptionValue [
	<magritteDescription>
	^ MAMarkupLineDescription new
		label: 'Value' asMultilanguageString;
		comment:
			'A recommended parameter value or set of values.A value provided in a catalog can be redefined at any higher layer of OSCAL (e.g., Profile).';
		accessor: #value;
		priority: 80;
		beJsonMapped;
		yourself
]
