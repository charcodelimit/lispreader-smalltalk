testing
isCircular: anIdentitySet

	cdr isConsCell ifFalse: [^ false].
	(anIdentitySet includes: cdr) ifTrue: [^ true].

	anIdentitySet add: self.
	^ cdr isCircular: anIdentitySet 