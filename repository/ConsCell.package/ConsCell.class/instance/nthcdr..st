accessing
nthcdr: n

	n isZero ifTrue: [^ self].
	n = 1 ifTrue: [^ cdr].
	^ cdr nthcdr: n - 1