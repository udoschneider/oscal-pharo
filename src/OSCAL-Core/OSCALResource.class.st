Class {
	#name : #OSCALResource,
	#superclass : #OSCALObject,
	#instVars : [
		'uuid',
		'title',
		'desc',
		'parties',
		'documentIds',
		'citation',
		'rlinks',
		'attachments',
		'remarks'
	],
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
OSCALResource class >> configureClassMapper: mapper [
	mapper
		for: self
		do: [ :mapping | 
			mapping mapOscalUuid.
			(mapping mapInstVar: #title) valueSchema: #'string-markup-line'.
			(mapping mapInstVar: #desc) valueSchema: #string.
			mapping mapOscalParties.
			mapping mapOscalDocumentIds.
			(mapping mapInstVar: #citation) valueSchema: OSCALCitation.
			(mapping mapInstVar: #rlinks) valueSchema: #'array-of-rlinks'.
			(mapping mapInstVar: #attachments) valueSchema: #'array-of-base64'.
			mapping mapOscalRemarks ]
]

{ #category : #printing }
OSCALResource >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: title;
		nextPut: $)
]
