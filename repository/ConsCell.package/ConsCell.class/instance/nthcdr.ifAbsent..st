accessing
nthcdr: n ifAbsent: aBlock

	n isZero ifTrue: [^ self].
	cdr ifNil: [n = 1 ifTrue: [^ nil] ifFalse: [aBlock value]].
	n = 1 ifTrue: [^ cdr].
	^ cdr nthcdr: n - 1ifAbsent: aBlock