list operations
safeDo: aBlock done: anIdentitySet

	(anIdentitySet includes: car)
		ifFalse: [aBlock value: self car. anIdentitySet add: car].

	((anIdentitySet includes: cdr) 
		or: [cdr isConsCell not]) ifTrue: [^ self].

	cdr safeDo: aBlock done: anIdentitySet

