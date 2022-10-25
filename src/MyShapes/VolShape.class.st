Class {
	#name : #VolShape,
	#superclass : #Object,
	#instVars : [
		'base',
		'height'
	],
	#category : #MyShapes
}

{ #category : #calculations }
VolShape >> baseArea [ 
^ base area 
]

{ #category : #calculations }
VolShape >> sideArea [ 
^ self subclassResponsibility 
]

{ #category : #calculations }
VolShape >> totalArea [ 
^ self subclassResponsibility 
]

{ #category : #calculations }
VolShape >> volume [ 
^ self subclassResponsibility 
]
