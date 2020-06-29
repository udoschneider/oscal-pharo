Class {
	#name : #OSCALObject,
	#superclass : #USModelPart,
	#category : #'OSCAL-Core'
}

{ #category : #'NeoJSON-Mapping' }
OSCALObject class >> mapToJsonMapper: mapper [
	self subclassResponsibility
]

{ #category : #'instance creation' }
OSCALObject class >> readFrom: aStream [
	| reader |
	reader := (NeoJSONReader on: aStream)
		mapMagritteClass: self;
		mapOscalWrapper: self;
		yourself.
	^ (reader nextAs: #OSCALWrapper) at: self wrapperKeyName
]

{ #category : #'instance creation' }
OSCALObject class >> wrapperKeyName [
	self subclassResponsibility
]

{ #category : #'NeoJSON-Mapping' }
OSCALObject class >> writeUtf8String: aString to: aFileReference [
	aFileReference
		ensureDelete;
		writeStreamDo: [ :bufferedUtf8Stream | bufferedUtf8Stream nextPutAll: aString ]
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionAnnotations [
	^ MAToManyRelationDescription new
		label: 'Annotations' asMultilanguageString;
		comment: 'A name/value pair with optional explanatory remarks.';
		accessor: #annotations;
		classes: (Array with: OSCALAnnotation);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionClass [
	^ MANcNameDescription new
		label: 'Class' asMultilanguageString;
		comment: 'Indicating the type or classification of the containing object';
		accessor: #oscalClass;
		beJsonMapped;
		jsonProperty: 'class';
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionControls [
	^ MAToManyRelationDescription new
		label: 'Controls' asMultilanguageString;
		comment:
			'A structured information object representing a security or privacy control. Each security or privacy control within the Catalog is defined by a distinct control instance.';
		accessor: #controls;
		classes: (Array with: OSCALControl);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionDesc [
	^ MAStringDescription new
		label: 'Desc' asMultilanguageString;
		comment: 'A short textual description';
		accessor: #desc;
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionDocumentIds [
	^ MAToManyRelationDescription new
		label: 'Document IDs' asMultilanguageString;
		comment: 'A document identifier qualified by an identifier type.';
		accessor: #documentIds;
		classes: (Array with: OSCALDocId);
		beJsonMapped;
		jsonProperty: 'document-ids';
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionGroups [
	^ MAToManyRelationDescription new
		label: 'Groups' asMultilanguageString;
		comment: 'A group of controls, or of groups of controls.';
		accessor: #groups;
		classes: (Array with: OSCALGroup);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionHref [
	^ MAStringDescription new
		label: 'Href' asMultilanguageString;
		accessor: #href;
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionId [
	^ MANcNameDescription new
		label: 'ID' asMultilanguageString;
		comment: 'Unique identifier of the containing object';
		accessor: #id;
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionLinks [
	^ MAToManyRelationDescription new
		label: 'Links' asMultilanguageString;
		comment: 'A reference to a local or remote resource';
		accessor: #links;
		classes: (Array with: OSCALLink);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionName [
	^ MANcNameDescription new
		label: 'Name' asMultilanguageString;
		comment:
			' Identifying the purpose and intended use of the property, part or other object.';
		accessor: #name;
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionNs [
	^ MAStringDescription new
		label: 'Namespace' asMultilanguageString;
		comment: 'A namespace qualifying the name.';
		accessor: #ns;
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionParameters [
	^ MAToManyRelationDescription new
		label: 'Parameters' asMultilanguageString;
		comment:
			'Parameters provide a mechanism for the dynamic assignment of value(s) in a control.';
		accessor: #parameters;
		classes: (Array with: OSCALParam);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionParts [
	^ MAToManyRelationDescription new
		label: 'Parts' asMultilanguageString;
		comment: 'A partition or component of a control or part';
		accessor: #parts;
		classes: (Array with: OSCALPart);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionProperties [
	^ MAToManyRelationDescription new
		label: 'Properties' asMultilanguageString;
		comment:
			'A value with a name, attributed to the containing control, part, or group.';
		accessor: #properties;
		classes: (Array with: OSCALProp);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionRemarks [
	^ MAMarkupMultiLineDescription new
		label: 'Remarks' asMultilanguageString;
		comment: 'Additional commentary on the parent item.';
		accessor: #remarks;
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionRlinks [
	^ MAToManyRelationDescription new
		label: 'RLinks' asMultilanguageString;
		comment:
			'A pointer to an external copy of a document with optional hash for verification';
		accessor: #rlinks;
		classes: (Array with: OSCALRlink);
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionShortName [
	^ MAStringDescription new
		label: 'Short Name' asMultilanguageString;
		comment: 'A common name, short name or acronym';
		accessor: #shortName;
		beJsonMapped;
		jsonProperty: 'short-name';
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionText [
	^ MAMarkupLineDescription new
		label: 'Text' asMultilanguageString;
		accessor: #text;
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionTitle [
	^ MAMarkupLineDescription new
		label: 'Title' asMultilanguageString;
		comment: 'A title for display and navigation';
		accessor: #title;
		beJsonMapped;
		yourself
]

{ #category : #'magritte-description' }
OSCALObject >> descriptionUUID [
	^ MAUuidDescription new
		label: 'UUID' asMultilanguageString;
		accessor: #uuid;
		beRequired;
		beJsonMapped;
		yourself
]

{ #category : #writing }
OSCALObject >> wrapper [
	^ Dictionary new
		at: self class wrapperKeyName put: self;
		yourself
]

{ #category : #writing }
OSCALObject >> writeTo: aStream [
	(NeoJSONWriter on: aStream)
		mapMagritteClass: self class;
		mapOscalWrapper: self class;
		prettyPrint: true;
		nextPut: self wrapper as: #OSCALWrapper
]
