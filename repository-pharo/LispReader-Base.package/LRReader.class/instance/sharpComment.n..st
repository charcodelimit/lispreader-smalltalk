# macros
sharpComment: aStream n: unused

	unused ifNotNil: [self error].

	self read: aStream.
	^ nil