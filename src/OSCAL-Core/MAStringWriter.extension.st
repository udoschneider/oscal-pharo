Extension { #name : #MAStringWriter }

{ #category : #'*OSCAL-Core' }
MAStringWriter >> visitUuidDescription: aMAUuidDescription [ 
	self stream nextPutAll: self object asString
]
