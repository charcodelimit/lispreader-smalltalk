meta-object-protocol
readString: aString

	^ self read: (ReadStream on: aString)