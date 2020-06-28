Extension { #name : #NeoJSONObjectMapping }

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalAnnotations [
	(self mapInstVar: #annotations) valueSchema: #'array-of-annotation'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalClass [
	(self mapInstVar: #oscalClass to: 'class') valueSchema: #ncname
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalControls [
	(self mapInstVar: #controls) valueSchema: #'array-of-control'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalDocumentIds [
	(self mapInstVar: #documentIds to: 'document-ids')
		valueSchema: #'array-of-doc-id'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalGroups [
	(self mapInstVar: #groups) valueSchema: #'array-of-group'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalLinks [
	(self mapInstVar: #links) valueSchema: #'array-of-link'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalLocations [
	(self mapInstVar: #locations) valueSchema: #'array-of-location'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalParameters [
	(self mapInstVar: #parameters) valueSchema: #'array-of-param'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalParties [
	(self mapInstVar: #parties) valueSchema: #'array-of-party'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalParts [
	(self mapInstVar: #parts) valueSchema: #'array-of-part'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalProperties [
	(self mapInstVar: #properties) valueSchema: #'array-of-prop'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalRemarks [
	(self mapInstVar: #remarks) valueSchema: #'string-markup-multiline'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalResources [
	(self mapInstVar: #resources) valueSchema: #'array-of-resource'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalResponsibleParties [
	(self mapInstVar: #responsibleParties to: 'responsible-parties')
		valueSchema: #'array-of-responsible-party'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalRoles [
	(self mapInstVar: #roles) valueSchema: #'array-of-role'
]

{ #category : #'*OSCAL-Core' }
NeoJSONObjectMapping >> mapOscalUuid [
	(self mapInstVar: #uuid) valueSchema: #'string-uuid'
]
