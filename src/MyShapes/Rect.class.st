Class {
	#name : #Rect,
	#superclass : #FlatShape,
	#instVars : [
		'a',
		'b',
		's'
	],
	#category : #MyShapes
}

{ #category : #'instance creation' }
Rect class >> width: w height: h [
  "| inst |
  inst := self new.
  inst a: w; b: h.
  ^ inst"
^ self new a: w; b: h
]

{ #category : #accessing }
Rect >> a [

	^ a
]

{ #category : #accessing }
Rect >> a: aNumber [ 
	a := aNumber max: 0.1.
	s := a * b
]

{ #category : #calculating }
Rect >> area [
 ^ self a * self b
 "^ s"
]

{ #category : #accessing }
Rect >> b [

	^ b
]

{ #category : #accessing }
Rect >> b: aNumber [ 
	b := aNumber max: 0.1.
	s := a * b
]

{ #category : #'row/column operations' }
Rect >> diagonal [

^(a squared + b squared) sqrt
]

{ #category : #initialization }
Rect >> initialize [
 a := 3.
 b := 4.
 s := 12
]

{ #category : #'as yet unclassified' }
Rect >> outR [
^ self diagonal / 2
]

{ #category : #calculating }
Rect >> perimeter [

^ (self a + self b) * 2
]

{ #category : #printing }
Rect >> printOn: aStream [
   aStream nextPutAll: 'Rectangle['.
	a printOn: aStream.
	aStream nextPut: $x.
	b printOn: aStream.
	aStream nextPut: $]
]
