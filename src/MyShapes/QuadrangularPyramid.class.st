Class {
	#name : #QuadrangularPyramid,
	#superclass : #ConeShape,
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
QuadrangularPyramid class >> baseClass: baseVal h: bNumber [ 
^ self new base: baseVal; height: bNumber
]

{ #category : #accessing }
QuadrangularPyramid >> base [
	^ base
]

{ #category : #accessing }
QuadrangularPyramid >> base: aParallelogram [ 
   base:= (aParallelogram class = Parallelogram) ifTrue: [base:= aParallelogram] .
]

{ #category : #accessing }
QuadrangularPyramid >> height [
	^height
]

{ #category : #accessing }
QuadrangularPyramid >> height: aNumber [ 
	height:= aNumber max: 0.1
]

{ #category : #initialization }
QuadrangularPyramid >> initialize [ 
 base := Parallelogram   new.
 height := 1
]

{ #category : #printing }
QuadrangularPyramid >> printOn: aStream [

aStream nextPutAll: 'Quadrangular Pyramid of height '.
height printOn: aStream .
aStream nextPutAll: ' on '.
base printOn: aStream 
]

{ #category : #calculations }
QuadrangularPyramid >> sideArea [ 
^ ((base area squared / 4) + ((base a squared) * (height squared) ))sqrt + ((base area squared / 4) + ((base b squared) * (height squared) ))sqrt 
]
