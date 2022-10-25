Class {
	#name : #RegularPolygonTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
RegularPolygonTest >> testArea [
  | a b|
 a := RegularPolygon  new.
 b := RegularPolygon number: 7 Radius: 12 .
 self assert: (a area roundUpTo: 0.01) equals: 77.72.
 self assert: (b area roundUpTo: 0.01) equals: 394.05.
]

{ #category : #tests }
RegularPolygonTest >> testCreation [ 
 | r |
r := RegularPolygon number: 7 Radius: 12 .
self assert: r n equals: 7.
self assert: r r equals: 12.

]

{ #category : #tests }
RegularPolygonTest >> testInitialize [

| r |
r := RegularPolygon   new.
self assert: r n equals: 25.
self assert: r r equals: 5.

]

{ #category : #tests }
RegularPolygonTest >> testPerimeter [
self assert: (RegularPolygon   new perimeter roundUpTo: 0.01) equals: 31.34.
self assert: ((RegularPolygon number: 7 Radius: 12) perimeter roundUpTo: 0.01) equals: 72.9.
]

{ #category : #tests }
RegularPolygonTest >> testPrintOn [

self assert: RegularPolygon   new printString equals: 'RegularPolygon<25,5>'
]
