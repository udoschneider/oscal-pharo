Class {
	#name : #MAToManyScalarRelationDescriptionJsonMapper,
	#superclass : #MAToManyRelationDescriptionJsonMapper,
	#category : #'OSCAL-Core'
}

{ #category : #'as yet unclassified' }
MAToManyScalarRelationDescriptionJsonMapper >> mapToJsonMapper: aNeoJSONMapper [
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
			ifAbsent: [ aNeoJSONMapper
				for: self valueSchema
				customDo: [ :mapping | 
					mapping decoder: [ :string | string ].
					mapping encoder: [ :object | object ] ] ]
]
