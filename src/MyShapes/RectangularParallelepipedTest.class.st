Class {
	#name : #RectangularParallelepipedTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
RectangularParallelepipedTest >> testArea [
  | a b |
 a := RectangularParallelepiped   new.
 b := RectangularParallelepiped baseClass: (Rect width: 5 height: 4  )  h: 10.
 self assert: a totalArea equals: 94.
 self assert: b totalArea  equals: 220.
 self assert: a volume equals: 60.
 self assert: b volume equals: 200.
 self assert: a sideArea equals: 70.
 self assert: b sideArea equals: 180.
 self assert: a baseArea equals: 12.
 self assert: b baseArea equals: 20.
]

{ #category : #tests }
RectangularParallelepipedTest >> testCreation [ 
 | r |
r := RectangularParallelepiped baseClass: (Rect  width: 5 height: 4)  h: 10.
self assert: r base class equals: Rect .
self assert: r height equals: 10.

]

{ #category : #tests }
RectangularParallelepipedTest >> testInitialize [

| r |
r := RectangularParallelepiped    new.
self assert: r base class equals: Rect.
self assert: r height equals: 5.
]

{ #category : #tests }
RectangularParallelepipedTest >> testPrintOn [

self assert: RectangularParallelepiped   new printString equals: 'Rectangular parallelepiped of height 5 on Rectangle[3x4]'
]
