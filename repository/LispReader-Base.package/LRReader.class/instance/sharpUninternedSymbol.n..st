# macros
sharpUninternedSymbol: aStream n: unused

	unused ifNotNil: [self error].
	^(self read: aStream) asString
