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
	fullCatalog := OSCALObject nistSp800_53Rev4CatalogMinContents.
	minCatalog := OSCALObject nistSp800_53Rev4CatalogContents
]

{ #category : #accessing }
OSCALTestResource >> tearDown [
	fullCatalog := minCatalog := nil
]
