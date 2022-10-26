Class {
	#name : #ConeShape,
	#superclass : #VolShape,
	#category : #MyShapes
}

{ #category : #printing }
ConeShape >> printOn: aStream [ 
self subclassResponsibility 
]

{ #category : #calculations }
ConeShape >> sideArea [ 
self subclassResponsibility 
]

{ #category : #accessing }
ConeShape >> totalArea [ 
^ self baseArea + self sideArea 
]

{ #category : #calculations }
ConeShape >> volume [ 
^ self baseArea * height  / 3
]
