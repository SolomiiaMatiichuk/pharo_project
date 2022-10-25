Class {
	#name : #RectangularParallelepiped,
	#superclass : #DirectShape,
	#category : #MyShapes
}

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
