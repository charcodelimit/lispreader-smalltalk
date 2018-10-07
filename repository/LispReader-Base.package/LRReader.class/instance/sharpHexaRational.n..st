# macros
sharpHexaRational: aStream n: unused
	| value |
	unused
		ifNotNil: [self error].
	^self readRational: aStream radix: 16.