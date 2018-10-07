# macros
sharpFunction: aStream n: unused

	unused ifNotNil: [self error].

	^ #function inCons addLast: (self read: aStream)