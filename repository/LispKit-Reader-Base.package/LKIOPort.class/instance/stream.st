as yet unclassified
stream

	^ self isInput ifTrue: [inStream] ifFalse: [outStream]
