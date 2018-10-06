accessing
last

	^ cdr ifNil: [self] ifNotNil: [cdr last]