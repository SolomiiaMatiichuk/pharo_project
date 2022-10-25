Class {
	#name : #DirectPrizmTest,
	#superclass : #TestCase,
	#category : #MyShapes
}

{ #category : #tests }
DirectPrizmTest >> testArea [
  | a b |
 a := DirectPrizm  new.
 b := DirectPrizm baseClass: (Trapeze sideA: 25 sideB:30  sideC: 15 sideD:15  height:7 )  h: 10.
 self assert: a totalArea equals: 620.
 self assert: b totalArea  equals: 1235.
 self assert: a volume equals: 800.
 self assert: b volume equals: 1925.
 self assert: a sideArea equals: 300.
 self assert: b sideArea equals: 850.
 self assert: a baseArea equals: 160.
 self assert: b baseArea equals: 192.5.
]

{ #category : #tests }
DirectPrizmTest >> testCreation [ 
 | r |
r := DirectPrizm baseClass: (Trapeze sideA: 25 sideB:30  sideC: 15 sideD:15  height:7)  h: 10.
self assert: r base class equals: Trapeze.
self assert: r height equals: 10.

]

{ #category : #tests }
DirectPrizmTest >> testInitialize [

| r |
r := DirectPrizm   new.
self assert: r base class equals: Trapeze .
self assert: r height equals: 5.
]

{ #category : #tests }
DirectPrizmTest >> testPrintOn [

self assert: DirectPrizm  new printString equals: 'Direct prizm of height 5 on Trapeze<14,26,10,10,8>'
]
