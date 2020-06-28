Class {
	#name : #OSCALTestResource,
	#superclass : #TestResource,
	#instVars : [
		'minCatalog',
		'fullCatalog'
	],
	#category : #'OSCAL-Tests'
}

{ #category : #accessing }
OSCALTestResource >> fullCatalog [
	^ fullCatalog
]

{ #category : #accessing }
OSCALTestResource >> minCatalog [
	^ minCatalog
]

{ #category : #accessing }
OSCALTestResource >> setUp [
	fullCatalog := OSCALObject nist_sp_800_53_rev4_catalog_min.
	minCatalog := OSCALObject nist_sp_800_53_rev4_catalog
]

{ #category : #accessing }
OSCALTestResource >> tearDown [
	fullCatalog := minCatalog := nil
]
