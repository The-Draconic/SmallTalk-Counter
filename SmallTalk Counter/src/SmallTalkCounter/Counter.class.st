"
Counter API:
 count: variable to be printed, incremented, and decremented
 Program will set count, decrement it, increment it, then print it.
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #SmallTalkCounter
}

{ #category : #accessing }
Counter >> count [ 
   ^ count 
]

{ #category : #setter }
Counter >> count: aNumber [
  count := aNumber
]

{ #category : #operations }
Counter >> decrement [ 
  count := count - 1
]

{ #category : #operations }
Counter >> increment [
  count := count + 1
]

{ #category : #initialization }
Counter >> initialize [ 
  count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
  super 
    printOn: aStream.
    aStream nextPutAll: ' with value: ', count printString.
]

{ #category : #accessing }
Counter >> startingAt: anInteger [
  count := anInteger 
]
