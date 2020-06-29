Class {
	#name : #MAMapDescription,
	#superclass : #MARelationDescription,
	#category : #'OSCAL-Core'
}

{ #category : #'accessing-defaults' }
MAMapDescription class >> defaultDefinitive [
	^ false
]

{ #category : #'accessing-defaults' }
MAMapDescription class >> defaultKind [
	^ Collection
]

{ #category : #'accessing-defaults' }
MAMapDescription class >> defaultOrdered [
	^ false
]

{ #category : #'accessing-defaults' }
MAMapDescription class >> defaultShouldCacheDefault [
	^ true
]

{ #category : #'accessing-defaults' }
MAMapDescription class >> defaultSorted [
	^ false
]

{ #category : #testing }
MAMapDescription class >> isAbstract [
	^ false
]

{ #category : #accessing }
MAMapDescription class >> label [
	^ '1:m Relation'
]

{ #category : #visiting }
MAMapDescription >> acceptMagritte: aVisitor [
	aVisitor visitMapDescription: self
]

{ #category : #actions }
MAMapDescription >> beDefinitive [
	self definitive: true
]

{ #category : #'as yet unclassified' }
MAMapDescription >> beJsonMapped [
	self jsonMapper: MAMapDescriptionJsonMapper new
]

{ #category : #actions }
MAMapDescription >> beModifiable [
	self definitive: false
]

{ #category : #'accessing-properties' }
MAMapDescription >> definitive [
	"Return true if the field is non-modifiable"

	^ self propertyAt: #definitive ifAbsent: [ self class defaultDefinitive ]
]

{ #category : #'accessing-properties' }
MAMapDescription >> definitive: aBoolean [
	self propertyAt: #definitive put: aBoolean
]

{ #category : #'acessing-magritte' }
MAMapDescription >> descriptionDefinitive [
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #definitive;
		label: 'Definitive';
		priority: 265;
		default: self class defaultDefinitive;
		yourself
]

{ #category : #testing }
MAMapDescription >> isDefinitive [
	"Return true if the field is non-modifiable"

	^ self definitive.
]

{ #category : #validating }
MAMapDescription >> validateKind: anObject [

	self
		tryValidation: [ super validateKind: anObject ]
		ifPass: [ 
			anObject do: [ :object |
				(self classes anySatisfy: [ :class | object species includesBehavior: class ])
					ifFalse: [ MAKindError description: self signal: self kindErrorMessage ] ] ]
]

{ #category : #validating }
MAMapDescription >> validateRequired: anObject [
	super validateRequired: anObject.
	(self isRequired and: [ anObject isCollection and: [ anObject isEmpty ] ])
		ifTrue: [ MARequiredError description: self signal: self requiredErrorMessage ]
]
