testing
isList: anIdentitySet

	(anIdentitySet includes: cdr) ifTrue: [^ false].
	anIdentitySet add: self.
	^ cdr isNil or: [cdr isConsCell and: [cdr isList: anIdentitySet]]