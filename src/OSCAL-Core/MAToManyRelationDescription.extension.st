Extension { #name : #MAToManyRelationDescription }

{ #category : #'*OSCAL-Core' }
MAToManyRelationDescription >> beJsonMapped [
	self jsonMapper: MAToManyRelationDescriptionJsonMapper new
]
