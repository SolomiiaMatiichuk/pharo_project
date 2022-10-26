Class {
	#name : #TriangularPyramidTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
TriangularPyramidTest >> testArea [
  | a b |
 a := TriangularPyramid    new.
 b := TriangularPyramid baseClass: (Triangle  sideA: 15 sideB: 20 andAngle: 90 )  h: 10.
 self assert: (a totalArea roundUpTo: 0.01 ) equals: 8.81.
 self assert: (b totalArea roundUpTo: 0.01 ) equals: 459.24.
 self assert: (a volume  roundUpTo: 0.01 ) equals: 1.3.
 self assert: (b volume roundUpTo: 0.01 ) equals: 500.0.
 self assert: (a sideArea   roundUpTo: 0.01 ) equals: 4.91.
 self assert: (b sideArea roundUpTo: 0.01 ) equals: 309.24.
 self assert: (a baseArea   roundUpTo: 0.01 ) equals: 3.9.
 self assert: (b baseArea roundUpTo: 0.01 ) equals: 150.0.
]

{ #category : #tests }
TriangularPyramidTest >> testCreation [ 
 | r |
r := TriangularPyramid  baseClass: (Triangle  sideA: 15 sideB: 17 andAngle: 90 )  h: 10.
self assert: r base class equals: Triangle .
self assert: r height equals: 10.

]

{ #category : #tests }
TriangularPyramidTest >> testInitialize [

| r |
r := TriangularPyramid    new.
self assert: r base class equals: Triangle .
self assert: r height equals: 1.
]

{ #category : #tests }
TriangularPyramidTest >> testPrintOn [

self assert: TriangularPyramid   new printString equals: 'Triangular Pyramid of height 1 on Triangle<3,3,60>'
]
