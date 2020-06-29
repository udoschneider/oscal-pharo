Extension { #name : #NeoJSONMapper }

{ #category : #'*OSCAL-Core' }
NeoJSONMapper >> mapMagritteClass: aClass [
	(aClass magritteTemplate magritteDescription
		allSatisfy: [ :description | description jsonMapper isNullMapper ])
		ifTrue: [ self
				traceCr:
					'Referenced class ' , aClass name
						, '. But this class has no JSON mapped descriptions!' ].
	aClass magritteTemplate magritteDescription
		do:
			[ :description | self mapMagritteDescription: description class: aClass ]
]

{ #category : #'*OSCAL-Core' }
NeoJSONMapper >> mapMagritteDescription: aMADescription class: aClass [
	aMADescription map: aClass toJsonMapper: self
]

{ #category : #'*OSCAL-Core' }
NeoJSONMapper >> mapOscalWrapper: wrappedSchema [
	self
		for: #OSCALWrapper
		customDo: [ :mapping | mapping mapWithValueSchema: wrappedSchema ]
]
