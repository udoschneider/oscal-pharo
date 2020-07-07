Class {
	#name : #OSCALParty,
	#superclass : #OSCALObject,
	#instVars : [
		'uuid',
		'type',
		'partyName',
		'shortName',
		'externalIds',
		'properties',
		'annotations',
		'links',
		'addresses',
		'emailAddresses',
		'telephoneNumbers',
		'memberOfOrganizations',
		'locationUuids',
		'remarks'
	],
	#category : #'OSCAL-Core'
}

{ #category : #accessing }
OSCALParty >> addresses [
	^ addresses
]

{ #category : #accessing }
OSCALParty >> addresses: aCollection [
	addresses := aCollection
]

{ #category : #accessing }
OSCALParty >> annotations [
	^ annotations
]

{ #category : #accessing }
OSCALParty >> annotations: aCollection [
	annotations := aCollection
]

{ #category : #accessing }
OSCALParty >> emailAddresses [
	^ emailAddresses
]

{ #category : #accessing }
OSCALParty >> emailAddresses: aCollection [
	emailAddresses := aCollection
]

{ #category : #accessing }
OSCALParty >> externalIds [
	^ externalIds
]

{ #category : #accessing }
OSCALParty >> externalIds: aCollection [
	externalIds := aCollection
]

{ #category : #accessing }
OSCALParty >> links [
	^ links
]

{ #category : #accessing }
OSCALParty >> links: aCollection [
	links := aCollection
]

{ #category : #accessing }
OSCALParty >> locationUuids [
	^ locationUuids
]

{ #category : #accessing }
OSCALParty >> locationUuids: aCollection [
	locationUuids := aCollection
]

{ #category : #accessing }
OSCALParty >> memberOfOrganizations [
	^ memberOfOrganizations
]

{ #category : #accessing }
OSCALParty >> memberOfOrganizations: aCollection [
	memberOfOrganizations := aCollection
]

{ #category : #accessing }
OSCALParty >> partyName [
	^ partyName
]

{ #category : #accessing }
OSCALParty >> partyName: aString [
	partyName := aString
]

{ #category : #accessing }
OSCALParty >> properties [
	^ properties
]

{ #category : #accessing }
OSCALParty >> properties: aCollection [
	properties := aCollection
]

{ #category : #accessing }
OSCALParty >> remarks [
	^ remarks
]

{ #category : #accessing }
OSCALParty >> remarks: anObject [
	remarks := anObject
]

{ #category : #accessing }
OSCALParty >> shortName [
	^ shortName
]

{ #category : #accessing }
OSCALParty >> shortName: aString [
	shortName := aString
]

{ #category : #accessing }
OSCALParty >> telephoneNumbers [
	^ telephoneNumbers
]

{ #category : #accessing }
OSCALParty >> telephoneNumbers: aCollection [
	telephoneNumbers := aCollection
]

{ #category : #accessing }
OSCALParty >> type [
	^ type
]

{ #category : #accessing }
OSCALParty >> type: aString [
	type := aString
]

{ #category : #accessing }
OSCALParty >> uuid [
	^ uuid
]

{ #category : #accessing }
OSCALParty >> uuid: aUUID [
	uuid := aUUID
]
