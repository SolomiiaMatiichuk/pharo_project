Class {
	#name : #Prizm,
	#superclass : #DirectShape,
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
Prizm class >> baseClass: baseVal h: bNumber [ 
^ self new base: baseVal; height: bNumber

]

{ #category : #accessing }
Prizm >> base [
	^ base
]

{ #category : #accessing }
Prizm >> base: aTriangle [ 
   base:= (aTriangle class = Triangle) ifTrue: [base:= aTriangle] .
]

{ #category : #'accessing - structure variables' }
Prizm >> height [
	^height
]

{ #category : #accessing }
Prizm >> height: aNumber [ 
	height:= aNumber max: 0.1
]

{ #category : #initialization }
Prizm >> initialize [ 
 base := Triangle new.
 height := 5
]

{ #category : #printing }
Prizm >> printOn: aStream [

aStream nextPutAll: 'Triangual prizm of height '.
height printOn: aStream .
aStream nextPutAll: ' on '.
base printOn: aStream 
]
