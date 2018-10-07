instance creation
readFrom: aStringOrStream 
	"Answer a new LBitVector as described on the stream, aStream"
	| stream |
	stream := aStringOrStream isString
				ifTrue: [ReadStream on: aStringOrStream]
				ifFalse: [aStringOrStream].
	^ self
		value: (Integer readFrom: stream base: 2)
		length: stream position