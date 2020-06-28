Class {
	#name : #OSCALObject,
	#superclass : #Object,
	#category : #'OSCAL-Core'
}

{ #category : #'NeoJSON-Mapping' }
OSCALObject class >> configureClassMapper: mapper [
	self subclassResponsibility
]

{ #category : #'instance creation' }
OSCALObject class >> readFrom: aStream [
	| reader |
	reader := (NeoJSONReader on: aStream)
		mapOscalClasses;
		mapOscalStrings;
		mapOscalArrays;
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

{ #category : #writing }
OSCALObject >> wrapper [
	^ Dictionary new
		at: self class wrapperKeyName put: self;
		yourself
]

{ #category : #writing }
OSCALObject >> writeTo: aStream [
	(NeoJSONWriter on: aStream)
		mapOscalClasses;
		mapOscalStrings;
		mapOscalArrays;
		mapOscalWrapper: self class;
		prettyPrint: true;
		nextPut: self wrapper as: #OSCALWrapper
]
