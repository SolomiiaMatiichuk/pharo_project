Class {
	#name : #TriangularPyramid,
	#superclass : #ConeShape,
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
TriangularPyramid class >> baseClass: baseVal h: bNumber [ 
^ self new base: baseVal; height: bNumber
]

{ #category : #accessing }
TriangularPyramid >> base [
	^ base
]

{ #category : #accessing }
TriangularPyramid >> base: aTriangle [ 
   base:= (aTriangle class = Triangle) ifTrue: [base:= aTriangle] .
]

{ #category : #accessing }
TriangularPyramid >> height [
	^height
]

{ #category : #accessing }
TriangularPyramid >> height: aNumber [ 
	height:= aNumber max: 0.1
]

{ #category : #initialization }
TriangularPyramid >> initialize [ 
 base := Triangle  new.
 height := 1
]

{ #category : #printing }
TriangularPyramid >> printOn: aStream [

aStream nextPutAll: 'Triangular Pyramid of height '.
height printOn: aStream .
aStream nextPutAll: ' on '.
base printOn: aStream 
]

{ #category : #calculations }
TriangularPyramid >> sideArea [ 
^ 1/2 *  base perimeter * (( ((base area squared) / (base perimeter squared)) + (height squared))sqrt) 
]
