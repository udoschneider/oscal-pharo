Extension { #name : #MAToOneRelationDescription }

{ #category : #'*OSCAL-Core' }
MAToOneRelationDescription >> beJsonMapped [
	self jsonMapper: MAToOneRelationDescriptionJsonMapper new
]
