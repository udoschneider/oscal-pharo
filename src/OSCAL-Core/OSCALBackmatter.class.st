Class {
	#name : #OSCALBackmatter,
	#superclass : #OSCALObject,
	#instVars : [
		'resources'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALBackmatter class >> mapToJsonMapper: mapper [
	mapper for: self do: [ :mapping | mapping mapOscalResources ]
]

{ #category : #'as yet unclassified' }
OSCALBackmatter >> descriptionResources [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Resources' asMultilanguageString;
		comment:
			'A resource associated with the present document, which may be a pointer to other data or a citation.';
		accessor: #resources;
		classes: (Array with: OSCALResource);
		beJsonMapped;
		yourself
]

{ #category : #accessing }
OSCALBackmatter >> resources [
	^ resources
]

{ #category : #accessing }
OSCALBackmatter >> resources: aCollection [
	resources := aCollection
]
