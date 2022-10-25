Class {
	#name : #DirectPrizm,
	#superclass : #DirectShape,
	#category : #MyShapes
}

{ #category : #'as yet unclassified' }
DirectPrizm class >> baseClass: baseVal h: bNumber [ 
^ self new base: baseVal; height: bNumber
]

{ #category : #accessing }
DirectPrizm >> base [
	^ base
]

{ #category : #accessing }
DirectPrizm >> base: aTrapeze [ 
   base:= (aTrapeze class = Trapeze) ifTrue: [base:= aTrapeze] .
]

{ #category : #accessing }
DirectPrizm >> height [
	^height
]

{ #category : #accessing }
DirectPrizm >> height: aNumber [ 
	height:= aNumber max: 0.1
]

{ #category : #initialization }
DirectPrizm >> initialize [ 
 base := Trapeze new.
 height := 5
]

{ #category : #printing }
DirectPrizm >> printOn: aStream [

aStream nextPutAll: 'Direct prizm of height '.
height printOn: aStream .
aStream nextPutAll: ' on '.
base printOn: aStream 
]
