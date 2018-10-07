# macros
sharpBinaryRational: aStream n: unused
	unused ifNotNil: [ self error ].
	^ self readRational: aStream radix: 2.