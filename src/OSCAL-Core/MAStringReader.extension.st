Extension { #name : #MAStringReader }

{ #category : #'*OSCAL-Core' }
MAStringReader >> visitUuidDescription: aDescription [
	self object: (UUID fromString: self contents)
]
