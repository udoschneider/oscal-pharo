Class {
	#name : #MAToOneRelationDescriptionJsonMapper,
	#superclass : #MAElementDescriptionJsonMapper,
	#category : #'OSCAL-Core'
}

{ #category : #testing }
MAToOneRelationDescriptionJsonMapper class >> isAbstract [
	^ false
]

{ #category : #'as yet unclassified' }
MAToOneRelationDescriptionJsonMapper >> mapToJsonMapper: aNeoJSONMapper [
	aNeoJSONMapper
		for: self mappedClass
			do: [ :mapping | 
			(mapping
				mapProperty: self property
				getter: self getter
				setter: self setter) valueSchema: self valueSchema ];
		mappingFor: self mappedClass
			ifAbsent: [ aNeoJSONMapper mapMagritteClass: self mappedClass ];
		mappingFor: self valueSchema
			ifAbsent: [ aNeoJSONMapper mapMagritteClass: self valueSchema ]
]
