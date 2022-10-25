Class {
	#name : #Circle,
	#superclass : #FlatShape,
	#instVars : [
		'r'
	],
	#category : #MyShapes
}

{ #category : #accessing }
Circle class >> radius: aNumber [
 ^self new radius: aNumber 
]

{ #category : #calculating }
Circle >> area [
^ r squared * Float pi 
]

{ #category : #initialization }
Circle >> initialize [ 
r := 1
]

{ #category : #accessing }
Circle >> length [ 
^ self perimeter 
]

{ #category : #calculating }
Circle >> perimeter [ 
^ 2 * Float pi * r
]

{ #category : #printing }
Circle >> printOn: aStream [

aStream nextPutAll: 'Circle('.
r printOn: aStream.
aStream nextPut: $)
]

{ #category : #accessing }
Circle >> radius: aNumber [ 
	r := aNumber max: 0.1
]
