Class {
	#name : #CylinderTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
CylinderTest >> testArea [
  | a b |
 a := Cylinder  new.
 b := Cylinder baseClass: (Circle radius: 7) h: 10.
 self assert: (a totalArea roundUpTo: 0.01 ) equals: 12.57.
 self assert: (b totalArea roundUpTo: 0.01 ) equals: 747.7.
 self assert: (a volume  roundUpTo: 0.01 ) equals: 3.15.
 self assert: (b volume roundUpTo: 0.01 ) equals: 1539.39.
 self assert: (a sideArea   roundUpTo: 0.01 ) equals: 6.29.
 self assert: (b sideArea roundUpTo: 0.01 ) equals: 439.83.
 self assert: (a baseArea   roundUpTo: 0.01 ) equals: 3.15.
 self assert: (b baseArea roundUpTo: 0.01 ) equals: 153.94.
]

{ #category : #tests }
CylinderTest >> testCreation [ 
 | r |
r := Cylinder baseClass: (Circle radius: 7 )  h: 10.
self assert: r base class equals: Circle .
self assert: r height equals: 10.

]

{ #category : #tests }
CylinderTest >> testInitialize [

| r |
r := Cylinder    new.
self assert: r base class equals: Circle.
self assert: r height equals: 1.
]

{ #category : #tests }
CylinderTest >> testPrintOn [

self assert: Cylinder   new printString equals: 'Cylinder of height 1 on Circle(1)'
]
