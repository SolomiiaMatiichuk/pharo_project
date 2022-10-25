Class {
	#name : #Triangle,
	#superclass : #FlatShape,
	#instVars : [
		'a',
		'b',
		'gamma'
	],
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
Triangle class >> sideA: aNumber sideB: bNumber andAngle: grad [

^ self new a: aNumber; b: bNumber; gamma: grad
]

{ #category : #accessing }
Triangle >> a [
	^ a
]

{ #category : #accessing }
Triangle >> a: aNumber [ 
	a := aNumber max: 0.1
]

{ #category : #calculating }
Triangle >> area [ 
^ a * b * self gammaInRadians sin / 2 
]

{ #category : #accessing }
Triangle >> b [
	^ b
]

{ #category : #accessing }
Triangle >> b: aNumber [ 
	b := aNumber max: 0.1
]

{ #category : #accessing }
Triangle >> gamma [
	^ gamma
]

{ #category : #accessing }
Triangle >> gamma: aNumber [ 
	gamma := (aNumber max: 1) min: 179
]

{ #category : #private }
Triangle >> gammaInRadians [
^ gamma / 180 * Float pi.
]

{ #category : #calculating }
Triangle >> inR [ 
^ self area / self perimeter * 2
]

{ #category : #initialization }
Triangle >> initialize [ 
a := 3.
b := 3.
gamma := 60
]

{ #category : #calculating }
Triangle >> perimeter [ 
^ a + b + self sideC  
]

{ #category : #printing }
Triangle >> printOn: aStream [ 
aStream nextPutAll: 'Triangle<'.
a printOn: aStream .
aStream nextPut: $,.
b printOn: aStream .
aStream nextPut: $,.
gamma printOn: aStream .
aStream nextPut: $>
]

{ #category : #private }
Triangle >> sideC [
^ (a squared + b squared - (2 * a * b * self gammaInRadians cos)) sqrt
]
