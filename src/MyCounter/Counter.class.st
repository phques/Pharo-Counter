"
`Counter` is a simple concrete class which supports incrementing and
         decrementing.
     Its API is
     - `decrement` and `increment`
     - `count`
     Its creation message is `startAt:`
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter class >> startingAt: anInteger [ 
	^ self new count: anInteger.
]

{ #category : 'accessing' }
Counter >> count [
^ count
]

{ #category : 'accessing' }
Counter >> count: c [
	count := c.
]

{ #category : 'modifying' }
Counter >> decrement [
	count := count - 1
]

{ #category : 'modifying' }
Counter >> increment [
	count := count + 1
]

{ #category : 'initialization' }
Counter >> initialize [
	count := 0.
]

{ #category : 'printing' }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: count printString
]
