# macros
sharpRadixNRational: aStream n: radix
	| value |
	(radix < 2
			or: [radix > 36])
		ifTrue: [self error: 'incorrect radix'].
	^self readRational: aStream radix: radix.