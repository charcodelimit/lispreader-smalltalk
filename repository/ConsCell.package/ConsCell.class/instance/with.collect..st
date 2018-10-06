list operations
with: aConsCell collect: aBlock

	^ self class car: (aBlock value: car value: aConsCell car)
		cdr: ((cdr isConsCell and: [aConsCell cdr isConsCell])
					ifTrue: [cdr with: aConsCell cdr collect: aBlock] ifFalse: [cdr])