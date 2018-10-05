# macros
sharpBinaryRational: aStream n: unused

	unused ifNotNil: [self error].

	^ Number readFrom: (self read: aStream) asString base: 2