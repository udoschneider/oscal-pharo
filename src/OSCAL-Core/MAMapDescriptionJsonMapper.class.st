Class {
	#name : #MAMapDescriptionJsonMapper,
	#superclass : #MAElementDescriptionJsonMapper,
	#category : #'OSCAL-Core'
}

{ #category : #testing }
MAMapDescriptionJsonMapper class >> isAbstract [
	^ false
]

{ #category : #'as yet unclassified' }
MAMapDescriptionJsonMapper >> mapToJsonMapper: aNeoJSONMapper [
	| mapSchemaName |
	mapSchemaName := #'map-of-' , self valueSchema name.
	aNeoJSONMapper
		for: self mappedClass
			do: [ :mapping | 
			(mapping
				mapProperty: self property
				getter: self getter
				setter: self setter) valueSchema: mapSchemaName ];
		for: mapSchemaName
			customDo: [ :mapping | mapping mapWithValueSchema: self valueSchema ];
		mappingFor: self valueSchema
			ifAbsent: [ aNeoJSONMapper mapMagritteClass: self valueSchema ]
]
