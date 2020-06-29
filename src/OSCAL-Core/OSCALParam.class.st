Class {
	#name : #OSCALParam,
	#superclass : #OSCALObject,
	#instVars : [
		'id',
		'oscalClass',
		'dependsOn',
		'label',
		'descriptions',
		'constraints',
		'guidance',
		'value',
		'select',
		'links'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALParam class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #id) valueSchema: #ncname.
			mapping mapOscalClass.
			(mapping mapInstVar: #dependsOn to: 'depends-on')
				valueSchema: #ncname.
			(mapping mapInstVar: #label) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #descriptions) valueSchema: #'array-of-usage'.
			(mapping mapInstVar: #constraints)
				valueSchema: #'array-of-constraint'.
			(mapping mapInstVar: #guidance) valueSchema: #'array-of-guideline'.
			(mapping mapInstVar: #value) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #select) valueSchema: OSCALSelect.
			(mapping mapInstVar: #links) valueSchema: #'array-of-link' ]
]

{ #category : #accessing }
OSCALParam >> constraints [
	^ constraints
]

{ #category : #accessing }
OSCALParam >> constraints: aCollection [
	constraints := aCollection
]

{ #category : #accessing }
OSCALParam >> dependsOn [
	^ dependsOn
]

{ #category : #accessing }
OSCALParam >> dependsOn: aNCName [
	dependsOn := aNCName
]

{ #category : #'magritte-description' }
OSCALParam >> descriptionClass [
	<magritteDescription>
	^ super descriptionClass
		priority: 20;
		yourself
]

{ #category : #'magritte-description' }
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

{ #category : #'magritte-description' }
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

{ #category : #'magritte-description' }
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

{ #category : #'magritte-description' }
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

{ #category : #'magritte-description' }
OSCALParam >> descriptionId [
	<magritteDescription>
	^ super descriptionId
		priority: 10;
		yourself
]

{ #category : #'magritte-description' }
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

{ #category : #'magritte-description' }
OSCALParam >> descriptionLinks [
	<magritteDescription>
	^ super descriptionLinks
		priority: 100;
		yourself
]

{ #category : #'magritte-description' }
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

{ #category : #'magritte-description' }
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

{ #category : #accessing }
OSCALParam >> descriptions [
	^ descriptions
]

{ #category : #accessing }
OSCALParam >> descriptions: aCollection [
	descriptions := aCollection
]

{ #category : #accessing }
OSCALParam >> guidance [
	^ guidance
]

{ #category : #accessing }
OSCALParam >> guidance: aCollection [
	guidance := aCollection
]

{ #category : #accessing }
OSCALParam >> id [
	^ id
]

{ #category : #accessing }
OSCALParam >> id: aNCName [
	id := aNCName
]

{ #category : #accessing }
OSCALParam >> label [
	^ label
]

{ #category : #accessing }
OSCALParam >> label: aMarkupLine [
	label := aMarkupLine
]

{ #category : #accessing }
OSCALParam >> links [
	^ links
]

{ #category : #accessing }
OSCALParam >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALParam >> oscalClass [
	^ oscalClass
]

{ #category : #accessing }
OSCALParam >> oscalClass: aNCName [
	oscalClass := aNCName
]

{ #category : #accessing }
OSCALParam >> select [
	^ select
]

{ #category : #accessing }
OSCALParam >> select: anOSACLSelect [
	select := anOSACLSelect
]

{ #category : #accessing }
OSCALParam >> value [
	^ value
]

{ #category : #accessing }
OSCALParam >> value1 [
	^ value
]

{ #category : #accessing }
OSCALParam >> value: aMarkupLine [
	value := aMarkupLine
]
