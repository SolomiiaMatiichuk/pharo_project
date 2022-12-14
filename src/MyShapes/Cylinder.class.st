Class {
	#name : #Cylinder,
	#superclass : #DirectShape,
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
Cylinder class >> baseClass: baseVal h: bNumber [ 
^ self new base: baseVal; height: bNumber
]

{ #category : #accessing }
Cylinder >> base [
	^ base
]

{ #category : #accessing }
Cylinder >> base: aCircle [ 
   base:= (aCircle class = Circle) ifTrue: [base:= aCircle] .
]

{ #category : #accessing }
Cylinder >> height [
	^height
]

{ #category : #accessing }
Cylinder >> height: aNumber [ 
	height:= aNumber max: 0.1
]

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
