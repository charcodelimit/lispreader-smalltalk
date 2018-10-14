reading
readString: aString

	^ self read: (ReadStream on: aString)