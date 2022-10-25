Class {
	#name : #Trapeze,
	#superclass : #FlatShape,
	#instVars : [
		'a',
		'b',
		'c',
		'd',
		'h'
	],
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
Trapeze class >> sideA: aNumber sideB: bNumber  sideC: cNumber sideD: dNumber height: hNumber [

^ self new a: aNumber; b: bNumber; c: cNumber; d: dNumber; h: hNumber
]

{ #category : #accessing }
Trapeze >> a [
	^ a
]

{ #category : #accessing }
Trapeze >> a: aNumber [ 
	a := aNumber max: 0.1
]

{ #category : #calculating }
Trapeze >> area [ 
^ (a + b)/2 * h
]

{ #category : #accessing }
Trapeze >> b [
	^ b
]

{ #category : #accessing }
Trapeze >> b: aNumber [ 
	b := aNumber max: 0.1
]

{ #category : #accessing }
Trapeze >> c [
	^ c
]

{ #category : #accessing }
Trapeze >> c: aNumber [ 
	c := aNumber max: 0.1
]

{ #category : #accessing }
Trapeze >> d [
	^ d
]

{ #category : #accessing }
Trapeze >> d: aNumber [ 
	d := aNumber max: 0.1
]

{ #category : #accessing }
Trapeze >> h [
	^ h
]

{ #category : #accessing }
Trapeze >> h: aNumber [ 
	h := aNumber max: 0.1
]

{ #category : #initialization }
Trapeze >> initialize [ 
a := 14.
b := 26.
c := 10.
d := 10.
h := 8
]

{ #category : #calculating }
Trapeze >> perimeter [ 
^ a+b+c+d
]

{ #category : #printing }
Trapeze >> printOn: aStream [

aStream nextPutAll: 'Trapeze<'.
a printOn: aStream.
aStream nextPut: $,.
b printOn: aStream.
aStream nextPut: $,.
c printOn: aStream.
aStream nextPut: $,.
d printOn: aStream.
aStream nextPut: $,.
h printOn: aStream.
aStream nextPut: $>
]
