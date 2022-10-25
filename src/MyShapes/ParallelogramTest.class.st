Class {
	#name : #ParallelogramTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
ParallelogramTest >> testArea [
  | a b|
 a := Parallelogram  new.
 b := Parallelogram sideA: 15 sideB: 17 andAngle: 90.
 self assert: (a area roundUpTo: 0.1 ) equals: 195.
 self assert: b area equals: 255.
]

{ #category : #tests }
ParallelogramTest >> testCreation [ 
 | r |
r := Parallelogram sideA: 15 sideB: 17 andAngle: 90.
self assert: r a equals: 15.
self assert: r b equals: 17.
self assert: r gamma equals: 90.

]

{ #category : #tests }
ParallelogramTest >> testGammaInRadians [
self assert: (Parallelogram  new gammaInRadians sin roundUpTo: 0.1) equals: 0.5.
]

{ #category : #tests }
ParallelogramTest >> testInitialize [

| r |
r := Parallelogram  new.
self assert: r a equals: 15.
self assert: r b equals: 26.
self assert: r gamma equals: 30.

]

{ #category : #tests }
ParallelogramTest >> testPerimeter [
self assert: Parallelogram  new perimeter equals: 82.
self assert: (Parallelogram sideA: 8 sideB: 23 andAngle: 30) perimeter equals: 62.
]

{ #category : #tests }
ParallelogramTest >> testPrintOn [

self assert: Parallelogram  new printString equals: 'Parallelogram<15,26,30>'
]
