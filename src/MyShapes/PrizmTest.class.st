Class {
	#name : #PrizmTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
PrizmTest >> testArea [
  | a b |
 a := Prizm new.
 b := Prizm baseClass: (Triangle sideA: 15 sideB:17  andAngle:30)  h: 10.
 self assert: (a totalArea roundUpTo: 0.001 ) equals: 52.795.
 self assert: (b totalArea roundUpTo: 0.1 ) equals: 532.6.
 self assert: (a volume  roundUpTo: 0.001 ) equals: 19.486.
 self assert: (b volume roundUpTo: 0.1 ) equals: 637.5.
 self assert: (a sideArea   roundUpTo: 0.001 ) equals: 45.0.
 self assert: (b sideArea roundUpTo: 0.1 ) equals: 405.1.
 self assert: (a baseArea   roundUpTo: 0.001 ) equals: 3.898.
 self assert: (b baseArea roundUpTo: 0.01 ) equals: 63.75.
]

{ #category : #tests }
PrizmTest >> testCreation [ 
 | r |
r := Prizm baseClass: (Triangle sideA: 15 sideB:17  andAngle:30)  h: 10.
self assert: r base class equals: Triangle.
self assert: r height equals: 10.

]

{ #category : #tests }
PrizmTest >> testInitialize [

| r |
r := Prizm  new.
self assert: r base class equals: Triangle .
self assert: r height equals: 5.

]

{ #category : #tests }
PrizmTest >> testPrintOn [

self assert: Prizm  new printString equals: 'Triangual prizm of height 5 on Triangle<3,3,60>'
]
