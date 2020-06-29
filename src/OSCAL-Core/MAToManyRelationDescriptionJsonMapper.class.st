Class {
	#name : #MAToManyRelationDescriptionJsonMapper,
	#superclass : #MAElementDescriptionJsonMapper,
	#category : #'OSCAL-Core'
}

{ #category : #testing }
MAToManyRelationDescriptionJsonMapper class >> isAbstract [
	^ false
]

{ #category : #'as yet unclassified' }
MAToManyRelationDescriptionJsonMapper >> mapToJsonMapper: aNeoJSONMapper [
	| arraySchemaName |
	arraySchemaName := #'array-of-' , self valueSchema name.
	aNeoJSONMapper
		for: self mappedClass
			do: [ :mapping | 
			(mapping
				mapProperty: self property
				getter: self getter
				setter: self setter) valueSchema: arraySchemaName ];
		for: arraySchemaName
			customDo: [ :mapping | mapping listOfElementSchema: self valueSchema ];
		mappingFor: self valueSchema
			ifAbsent: [ aNeoJSONMapper mapMagritteClass: self valueSchema ]
]
