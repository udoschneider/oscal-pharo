Class {
	#name : #MAUuidDescription,
	#superclass : #MAMagnitudeDescription,
	#category : #'OSCAL-Core'
}

{ #category : #visiting }
MAUuidDescription >> acceptMagritte: aVisitor [
	aVisitor visitUuidDescription: self
]

{ #category : #'*OSCAL-Core' }
MAUuidDescription >> jsonValueSchema [
	^ #'string-uuid'
]
