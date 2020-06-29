Extension { #name : #MASelectorAccessor }

{ #category : #'*OSCAL-Core' }
MASelectorAccessor >> defaultJsonGetter [
	^ [ :object | object perform: self readSelector ]
]

{ #category : #'*OSCAL-Core' }
MASelectorAccessor >> defaultJsonProperty [
	^ self readSelector
]

{ #category : #'*OSCAL-Core' }
MASelectorAccessor >> defaultJsonSetter [
	^ [ :object :value | object perform: self writeSelector with: value ]
]
