Class {
	#name : #TrapezeTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
TrapezeTest >> testArea [
  | a b|
 a := Trapeze new.
 b := Trapeze sideA: 7 sideB: 12 sideC: 15 sideD: 15 height: 6.
 self assert: a area equals: 160.
 self assert: b area equals: 57.
]

{ #category : #tests }
TrapezeTest >> testCreation [ 
 | r |
r := Trapeze sideA: 7 sideB: 12 sideC: 15 sideD: 15 height: 6.
self assert: r a equals: 7.
self assert: r b equals: 12.
self assert: r c equals: 15.
self assert: r d equals: 15.
self assert: r h equals: 6.
]

{ #category : #tests }
TrapezeTest >> testInitialize [

| r |
r := Trapeze new.
self assert: r a equals: 14.
self assert: r b equals: 26.
self assert: r c equals: 10.
self assert: r d equals: 10.
self assert: r h equals: 8.
]

{ #category : #tests }
TrapezeTest >> testPerimeter [
self assert: Trapeze new perimeter equals: 60.
self assert: (Trapeze sideA: 7 sideB: 12 sideC: 15 sideD: 15 height: 6) perimeter equals: 49.
]

{ #category : #tests }
TrapezeTest >> testPrintOn [

self assert: Trapeze new printString equals: 'Trapeze<14,26,10,10,8>'
]
