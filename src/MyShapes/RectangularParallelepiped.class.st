Class {
	#name : #RectangularParallelepiped,
	#superclass : #DirectShape,
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
RectangularParallelepiped class >> baseClass: baseVal h: bNumber [ 
^ self new base: baseVal; height: bNumber

]

{ #category : #accessing }
RectangularParallelepiped >> base [
	^ base
]

{ #category : #accessing }
RectangularParallelepiped >> base: aRect [
   base:= (aRect class = Rect) ifTrue: [base:= aRect] .
]

{ #category : #accessing }
RectangularParallelepiped >> height [
	^height
]

{ #category : #accessing }
RectangularParallelepiped >> height: aNumber [ 
	height:= aNumber max: 0.1
]

{ #category : #initialization }
RectangularParallelepiped >> initialize [ 
 base := Rect new.
 height := 5
]

{ #category : #printing }
RectangularParallelepiped >> printOn: aStream [

aStream nextPutAll: 'Rectangular parallelepiped of height '.
height printOn: aStream .
aStream nextPutAll: ' on '.
base printOn: aStream 
]
