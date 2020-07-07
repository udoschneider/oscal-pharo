Extension { #name : #NeoJSONMapper }

{ #category : #'*OSCAL-Core' }
NeoJSONMapper >> mapOscalWrapper: wrappedSchema [
	self
		for: #OSCALWrapper
		customDo: [ :mapping | mapping mapWithValueSchema: wrappedSchema ]
]
