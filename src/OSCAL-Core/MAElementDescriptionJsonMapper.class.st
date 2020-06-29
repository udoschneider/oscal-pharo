Class {
	#name : #MAElementDescriptionJsonMapper,
	#superclass : #MADescriptionJsonMapper,
	#category : #'OSCAL-Core'
}

{ #category : #testing }
MAElementDescriptionJsonMapper class >> isAbstract [
	^ false
]

{ #category : #'as yet unclassified' }
MAElementDescriptionJsonMapper >> mapToJsonMapper: aNeoJSONMapper [
	aNeoJSONMapper
		for: self mappedClass
		do: [ :mapping | 
			(mapping
				mapProperty: self property
				getter: self getter
				setter: self setter) valueSchema: self valueSchema ].
	self valueSchema
		ifNotNil: [ aNeoJSONMapper
				for: self valueSchema
				customDo: [ :mapping | 
					mapping decoder: [ :json | self description fromJson: json ].
					mapping encoder: [ :object | self description toJson: object ] ] ]
]
