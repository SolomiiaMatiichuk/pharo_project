Class {
	#name : #Square,
	#superclass : #Rect,
	#category : #MyShapes
}

{ #category : #accessing }
Square class >> side: w [
"^ self new a: w; b: w"
^super width: w height: w
]

{ #category : #'instance creation' }
Square class >> width: a height: b [
"^ self side: a"
^ self error: 'Use side: to create a square' 
]

{ #category : #calculating }
Square >> inR [
^ self a / 2
]

{ #category : #initialization }
Square >> initialize [ 
 a := 5. self b: 5.
]

{ #category : #printing }
Square >> printOn: aStream [

   aStream nextPutAll: 'Square['.
	self a printOn: aStream.
	aStream nextPut: $]
]
