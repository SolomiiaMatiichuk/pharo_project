Class {
	#name : #Cone,
	#superclass : #ConeShape,
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
Cone class >> baseClass: baseVal h: bNumber [ 
^ self new base: baseVal; height: bNumber
]

{ #category : #accessing }
Cone >> base [
	^ base
]

{ #category : #accessing }
Cone >> base: aCircle [ 
   base:= (aCircle class = Circle) ifTrue: [base:= aCircle] .
]

{ #category : #accessing }
Cone >> height [
	^height
]

{ #category : #accessing }
Cone >> height: aNumber [ 
	height:= aNumber max: 0.1
]

{ #category : #initialization }
Cone >> initialize [ 
 base := Circle new.
 height := 1
]

{ #category : #printing }
Cone >> printOn: aStream [

aStream nextPutAll: 'Cone of height '.
height printOn: aStream .
aStream nextPutAll: ' on '.
base printOn: aStream 
]

{ #category : #calculations }
Cone >> sideArea [ 
^ Float pi * ( base radius) * (((  base radius) squared + height  squared ) sqrt )
]
