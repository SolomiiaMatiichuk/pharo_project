Class {
	#name : #CircleTest,
	#superclass : #TestCase,
	#instVars : [
		'pi',
		'circle',
		'largerCircle'
	],
	#category : #MyShapes
}

{ #category : #running }
CircleTest >> setUp [
	super setUp.
	
	"Put here a common initialization logic for tests"
	pi := Float pi.
	circle := Circle new.
	largerCircle := Circle radius: 5.
]

{ #category : #tests }
CircleTest >> testArea [

self assert: circle area equals: pi.
self assert: largerCircle area equals: 25 * pi.
]

{ #category : #tests }
CircleTest >> testLength [

self assert: circle length equals: pi + pi.
self assert: largerCircle length equals: 10 * pi.
]

{ #category : #tests }
CircleTest >> testPrintOn [

self assert: Circle new printString equals: 'Circle(1)'
]
