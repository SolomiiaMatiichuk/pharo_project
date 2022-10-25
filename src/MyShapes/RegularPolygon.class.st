Class {
	#name : #RegularPolygon,
	#superclass : #FlatShape,
	#instVars : [
		'n',
		'r'
	],
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
RegularPolygon class >> number: aNumber Radius: bNumber [ 

^ self new n: aNumber; r: bNumber
]

{ #category : #calculating }
RegularPolygon >> area [ 
^ (n/2) * r squared * ((Float pi * 2/n) sin)
]

{ #category : #initialization }
RegularPolygon >> initialize [ 
n := 25.
r := 5.

]

{ #category : #accessing }
RegularPolygon >> n [
	^ n
]

{ #category : #accessing }
RegularPolygon >> n: anInteger [ 
	n := anInteger max: 3.
]

{ #category : #calculating }
RegularPolygon >> perimeter [ 
^ n*self sideLength 
]

{ #category : #printing }
RegularPolygon >> printOn: aStream [

aStream nextPutAll: 'RegularPolygon<'.
n printOn: aStream.
aStream nextPut: $,.
r printOn: aStream.
aStream nextPut: $>
]

{ #category : #accessing }
RegularPolygon >> r [
	^ r
]

{ #category : #accessing }
RegularPolygon >> r: aNumber [ 
	r := aNumber max: 0.1.
	
]

{ #category : #'accessing - structure variables' }
RegularPolygon >> rIn [
^r*((Float pi /n)cos)

]

{ #category : #calculations }
RegularPolygon >> sideLength [
^ 2*r*((Float pi/n)sin)
]
