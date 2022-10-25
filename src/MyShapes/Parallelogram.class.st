Class {
	#name : #Parallelogram,
	#superclass : #FlatShape,
	#instVars : [
		'a',
		'b',
		'gamma'
	],
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
Parallelogram class >> sideA: aNumber sideB: bNumber andAngle: grad [

^ self new a: aNumber; b: bNumber; gamma: grad
]

{ #category : #accessing }
Parallelogram >> a [
	^ a
]

{ #category : #accessing }
Parallelogram >> a: aNumber [ 
	a := aNumber max: 0.1
]

{ #category : #calculating }
Parallelogram >> area [ 
^ a *b * self gammaInRadians sin
]

{ #category : #accessing }
Parallelogram >> b [
	^ b
]

{ #category : #accessing }
Parallelogram >> b: aNumber [ 
	b := aNumber max: 0.1
]

{ #category : #accessing }
Parallelogram >> gamma [
	^ gamma
]

{ #category : #accessing }
Parallelogram >> gamma: aNumber [ 
	gamma := (aNumber max: 1) min: 179
]

{ #category : #accessing }
Parallelogram >> gammaInRadians [
^ gamma / 180 * Float pi.
]

{ #category : #initialization }
Parallelogram >> initialize [ 
a := 15.
b := 26.
gamma := 30.

]

{ #category : #calculating }
Parallelogram >> perimeter [
^ 2*(a +b) 
]

{ #category : #printing }
Parallelogram >> printOn: aStream [

aStream nextPutAll: 'Parallelogram<'.
a printOn: aStream.
aStream nextPut: $,.
b printOn: aStream.
aStream nextPut: $,.
gamma printOn: aStream.
aStream nextPut: $>
]
