testing
length: aNumber with: anIdentitySet 

	cdr isNil ifTrue: [^ aNumber].
	cdr isConsCell ifFalse: [self error: 'not a list'].
	(anIdentitySet includes: cdr) ifTrue: [^ Float infinity].

	anIdentitySet add: self.
	^ cdr length: aNumber + 1 with: anIdentitySet 