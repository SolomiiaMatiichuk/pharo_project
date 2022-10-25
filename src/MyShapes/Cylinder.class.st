Class {
	#name : #Cylinder,
	#superclass : #DirectShape,
	#category : #MyShapes
}

{ #category : #initialization }
Cylinder >> initialize [ 
 base := Circle new.
 height := 1
]

{ #category : #printing }
Cylinder >> printOn: aStream [

aStream nextPutAll: 'Cylinder of height '.
height printOn: aStream .
aStream nextPutAll: ' on '.
base printOn: aStream 
]
