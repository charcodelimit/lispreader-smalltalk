accessing
nthCell: n

	n isZero ifTrue: [^ self].
	n = 1 ifTrue: [^ cdr].
	^ cdr nthCell: n - 1