accessing
nth: n ifAbsent: aBlock

	n isZero ifTrue: [^ car].
	cdr ifNil: [^ aBlock value].
	n = 1 ifTrue: [^ cdr car].
	^ cdr nth: n - 1ifAbsent: aBlock