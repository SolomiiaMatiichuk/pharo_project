Class {
	#name : #ConeTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
ConeTest >> testArea [
  | a b |
 a := Cone  new.
 b := Cone baseClass: (Circle radius: 7) h: 10.
 self assert: (a totalArea roundUpTo: 0.01 ) equals: 7.59.
 self assert: (b totalArea roundUpTo: 0.01 ) equals: 422.38.
 self assert: (a volume  roundUpTo: 0.01 ) equals: 1.05.
 self assert: (b volume roundUpTo: 0.01 ) equals: 513.13.
 self assert: (a sideArea   roundUpTo: 0.01 ) equals: 4.45.
 self assert: (b sideArea roundUpTo: 0.01 ) equals: 268.44.
 self assert: (a baseArea   roundUpTo: 0.01 ) equals: 3.15.
 self assert: (b baseArea roundUpTo: 0.01 ) equals: 153.94.
]

{ #category : #tests }
ConeTest >> testCreation [ 
 | r |
r := Cone baseClass: (Circle radius: 7 )  h: 10.
self assert: r base class equals: Circle .
self assert: r height equals: 10.

]

{ #category : #tests }
ConeTest >> testInitialize [

| r |
r := Cone    new.
self assert: r base class equals: Circle.
self assert: r height equals: 1.
]

{ #category : #tests }
ConeTest >> testPrintOn [

self assert: Cone   new printString equals: 'Cone of height 1 on Circle(1)'
]
