Class {
	#name : #OSCALTest,
	#superclass : #TestCase,
	#instVars : [
		'sampleData',
		'rawSampleData',
		'cleanSampleData'
	],
	#category : #'OSCAL-Tests'
}

{ #category : #accessing }
OSCALTest class >> resources [
	^ Array with: OSCALTestResource
]

{ #category : #accessing }
OSCALTest >> fullCatalog [
	^ OSCALTestResource current fullCatalog
]

{ #category : #api }
OSCALTest >> json: data [
	| reader |
	reader := NeoJSONReader on: data readStream.
	^ reader next
]

{ #category : #api }
OSCALTest >> write: data [
	^ String
		streamContents: [ :stream | 
			| writer |
			writer := NeoJSONWriter on: stream.
			self class configureClassMapper: writer.
			writer
				prettyPrint: true;
				nextPut: data ]
]
