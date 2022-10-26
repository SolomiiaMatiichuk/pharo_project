Class {
	#name : #QuadeangularPyramidTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
QuadeangularPyramidTest >> testArea [
  | a b |
 a := QuadrangularPyramid     new.
 b := QuadrangularPyramid baseClass: (Parallelogram  sideA: 20 sideB: 40 andAngle: 30  )  h: 10.
 self assert: (a totalArea roundUpTo: 0.01 ) equals: 394.56.
 self assert: (b totalArea roundUpTo: 0.01 ) equals: 1130.06.
 self assert: (a volume  roundUpTo: 0.01 ) equals: 65.0.
 self assert: (b volume roundUpTo: 0.01 ) equals: 1333.34.
 self assert: (a sideArea   roundUpTo: 0.01 ) equals: 199.56.
 self assert: (b sideArea roundUpTo: 0.1 ) equals: 730.1.
 self assert: (a baseArea   roundUpTo: 0.01 ) equals: 195.0.
 self assert: (b baseArea roundUpTo: 0.01 ) equals: 400.0.
]

{ #category : #tests }
QuadeangularPyramidTest >> testCreation [ 
 | r |
r := QuadrangularPyramid   baseClass: (Parallelogram  sideA: 20 sideB: 40 andAngle: 30 )  h: 10.
self assert: r base class equals: Parallelogram .
self assert: r height equals: 10.

]

{ #category : #tests }
QuadeangularPyramidTest >> testInitialize [

| r |
r := QuadrangularPyramid     new.
self assert: r base class equals: Parallelogram  .
self assert: r height equals: 1.
]

{ #category : #tests }
QuadeangularPyramidTest >> testPrintOn [

self assert: QuadrangularPyramid    new printString equals: 'Quadrangular Pyramid of height 1 on Parallelogram<15,26,30>'
]
