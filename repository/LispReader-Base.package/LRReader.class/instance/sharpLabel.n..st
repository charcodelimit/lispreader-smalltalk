# macros
sharpLabel: aStream n: aNumber

	| v |

	aNumber ifNil: [self error: 'incorrect label syntax'].

	v := self read: aStream.
	
	(self labels includesKey: aNumber)
		ifFalse: [self labels at: aNumber put: v]
		ifTrue: [(self labels at: aNumber) becomeForward: v].

	^ self labels at: aNumber