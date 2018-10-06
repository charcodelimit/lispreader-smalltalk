accessing
nth: n

	n isZero ifTrue: [^ car].
	cdr ifNil: [^ nil].
	n = 1 ifTrue: [^ cdr car].
	^ cdr nth: n - 1