Class {
	#name : #OSCALLink,
	#superclass : #OSCALObject,
	#instVars : [
		'text',
		'href',
		'mediaType',
		'rel'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALLink class >> mapToJsonMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #text) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #href) valueSchema: #'uri-reference'.
			(mapping mapInstVar: #rel) valueSchema: #ncname.
			(mapping mapInstVar: #mediaType to: 'media-type')
				valueSchema: #string ]
]

{ #category : #'as yet unclassified' }
OSCALLink >> descriptionHref [
	<magritteDescription>
	^ super descriptionHref
		priority: 20;
		yourself
]

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
OSCALLink >> descriptionRel [
	<magritteDescription>
	^ MANcNameDescription new
		label: 'Rel' asMultilanguageString;
		accessor: #rel;
		beJsonMapped;
		priority: 30;
		yourself
]

{ #category : #'as yet unclassified' }
OSCALLink >> descriptionText [
	<magritteDescription>
	^ super descriptionText
		priority: 10;
		yourself
]

{ #category : #accessing }
OSCALLink >> href [
	^ href
]

{ #category : #accessing }
OSCALLink >> href: anUrl [
	href := anUrl
]

{ #category : #accessing }
OSCALLink >> mediaType [
	^ mediaType
]

{ #category : #accessing }
OSCALLink >> mediaType: aString [
	mediaType := aString
]

{ #category : #accessing }
OSCALLink >> rel [
	^ rel
]

{ #category : #accessing }
OSCALLink >> rel: aNCName [
	rel := aNCName
]

{ #category : #accessing }
OSCALLink >> text [
	^ text
]

{ #category : #accessing }
OSCALLink >> text: aMarkupLine [
	text := aMarkupLine
]
