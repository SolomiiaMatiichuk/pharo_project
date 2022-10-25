Class {
	#name : #TriangleTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
TriangleTest >> testArea [
  | a b |
 a := Triangle  new.
 b := Triangle sideA: 10 sideB: 25 andAngle: 30.
 self assert: (a area roundUpTo: 0.01 ) equals: 3.9.
 self assert: (b area roundUpTo: 0.1 ) equals: 62.5.
]

{ #category : #tests }
TriangleTest >> testCreation [ 
 | r |
r := Triangle sideA: 15 sideB: 17 andAngle: 90.
self assert: r a equals: 15.
self assert: r b equals: 17.
self assert: r gamma equals: 90.
]

{ #category : #tests }
TriangleTest >> testGammaInRadians [
self assert: (Triangle new gammaInRadians sin roundUpTo: 0.1) equals: 0.9.
]

{ #category : #tests }
TriangleTest >> testInR [
self assert: (Triangle new inR  roundUpTo: 0.1)equals: 0.9.
]

{ #category : #tests }
TriangleTest >> testInitialize [

| r |
r := Triangle   new.
self assert: r a equals: 3.
self assert: r b equals: 3.
self assert: r gamma equals: 60.

]

{ #category : #tests }
TriangleTest >> testPerimeter [
self assert: Triangle  new perimeter equals: 9.
self assert: ((Triangle  sideA: 8 sideB: 23 andAngle: 30 ) perimeter roundUpTo: 0.01 ) equals: 47.57.

]

{ #category : #tests }
TriangleTest >> testPrintOn [

self assert: Triangle   new printString equals: 'Triangle<3,3,60>'
]

{ #category : #tests }
TriangleTest >> testSideC [
self assert: (Triangle new sideC roundUpTo: 0.1)equals: 3.

]
