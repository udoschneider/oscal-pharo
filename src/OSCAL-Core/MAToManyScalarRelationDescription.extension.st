Extension { #name : #MAToManyScalarRelationDescription }

{ #category : #'*OSCAL-Core' }
MAToManyScalarRelationDescription >> beJsonMapped [
	self jsonMapper: MAToManyScalarRelationDescriptionJsonMapper new
]
