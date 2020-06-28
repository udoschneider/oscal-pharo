Extension { #name : #NeoJSONMapper }

{ #category : #'*OSCAL-Core' }
NeoJSONMapper >> mapOscalArrays [
	self
		for: #'array-of-address'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALAddress ];
		for: #'array-of-addr-line'
			customDo: [ :mapping | mapping listOfElementSchema: #string ];
		for: #'array-of-choice'
			customDo: [ :mapping | mapping listOfElementSchema: #'string-markup-line' ];
		for: #'array-of-control'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALControl ];
		for: #'array-of-doc-id'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALDocId ];
		for: #'array-of-email'
			customDo: [ :mapping | mapping listOfElementSchema: #string ];
		for: #'array-of-group'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALGroup ];
		for: #'array-of-link'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALLink ];
		for: #'array-of-param'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALParam ];
		for: #'array-of-part'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALPart ];
		for: #'array-of-party'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALParty ];
		for: #'array-of-party-uuid'
			customDo: [ :mapping | mapping listOfElementSchema: #'string-uuid' ];
		for: #'array-of-prop'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALProp ];
		for: #'array-of-responsible-party'
			customDo: [ :mapping | mapping mapWithValueSchema: OSCALResponsiblyParty ];
		for: #'array-of-resource'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALResource ];
		for: #'array-of-rlinks'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALRlink ];
		for: #'array-of-role'
			customDo: [ :mapping | mapping listOfElementSchema: OSCALRole ]
]

{ #category : #'*OSCAL-Core' }
NeoJSONMapper >> mapOscalClasses [
	OSCALObject
		allSubclassesDo: [ :each | each configureClassMapper: self ]
]

{ #category : #'*OSCAL-Core' }
NeoJSONMapper >> mapOscalStrings [
	self
		for: #ncname
			customDo: [ :mapping | 
			mapping decoder: [ :string | string ].
			mapping encoder: [ :ncname | ncname ] ];
		for: #'uri-reference'
			customDo: [ :mapping | 
			mapping decoder: [ :string | string	"asUrl" ].
			mapping encoder: [ :uri | uri	"displayString" ] ];
		for: #string
			customDo: [ :mapping | 
			mapping decoder: [ :string | string ].
			mapping encoder: [ :string | string ] ];
		for: #'string-markup-line'
			customDo: [ :mapping | 
			mapping decoder: [ :string | string ].
			mapping encoder: [ :markupline | markupline ] ];
		for: #'string-markup-multiline'
			customDo: [ :mapping | 
			mapping decoder: [ :string | string ].
			mapping encoder: [ :markupline | markupline ] ];
		for: #'string-dateTime-with-timezone'
			customDo: [ :mapping | 
			mapping decoder: [ :string | DateAndTime fromString: string ].
			mapping encoder: [ :dateAndTime | dateAndTime displayString ] ];
		for: #'string-uuid'
			customDo: [ :mapping | 
			mapping decoder: [ :string | UUID fromString: string ].
			mapping encoder: [ :uuid | uuid displayString ] ]
]

{ #category : #'*OSCAL-Core' }
NeoJSONMapper >> mapOscalWrapper: wrappedSchema [
	self
		for: #OSCALWrapper
		customDo: [ :mapping | mapping mapWithValueSchema: wrappedSchema ]
]
