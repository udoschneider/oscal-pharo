Extension { #name : #MADescription }

{ #category : #'*OSCAL-Core' }
MADescription >> beJsonMapped [
	self jsonMapper: MAElementDescriptionJsonMapper new
]

{ #category : #'*OSCAL-Core' }
MADescription class >> defaultJsonMapper [
	^ MANullJsonMapper new
]

{ #category : #'*OSCAL-Core' }
MADescription >> fromJson: aString [
	^ self fromString: aString
]

{ #category : #'*OSCAL-Core' }
MADescription >> jsonGetter [
	^ self
		propertyAt: #jsonGetter
		ifAbsent: [ self accessor defaultJsonGetter ]
]

{ #category : #'*OSCAL-Core' }
MADescription >> jsonGetter: aBlock [
	self propertyAt: #jsonGetter put: aBlock
]

{ #category : #'*OSCAL-Core' }
MADescription >> jsonMapper [
	^ self propertyAt: #jsonMapper ifAbsent: [ self class defaultJsonMapper ]
]

{ #category : #'*OSCAL-Core' }
MADescription >> jsonMapper: aBlock [
	self propertyAt: #jsonMapper put: aBlock
]

{ #category : #'*OSCAL-Core' }
MADescription >> jsonProperty [
	^ self
		propertyAt: #jsonProperty
		ifAbsent: [ self accessor defaultJsonProperty ]
]

{ #category : #'*OSCAL-Core' }
MADescription >> jsonProperty: aString [
	self propertyAt: #jsonProperty put: aString
]

{ #category : #'*OSCAL-Core' }
MADescription >> jsonSetter [
	^ self
		propertyAt: #jsonSetter
		ifAbsent: [ self accessor defaultJsonSetter ]
]

{ #category : #'*OSCAL-Core' }
MADescription >> jsonSetter: aBlock [
	self propertyAt: #jsonSetter put: aBlock
]

{ #category : #'*OSCAL-Core' }
MADescription >> jsonValueSchema [
	^ nil
]

{ #category : #'*OSCAL-Core' }
MADescription >> map: aClass toJsonMapper: aNeoJSONMapper [
	self jsonMapper
		description: self;
		mappedClass: aClass;
		mapToJsonMapper: aNeoJSONMapper
]

{ #category : #'*OSCAL-Core' }
MADescription >> toJson: object [
	^ self toString: object
]
