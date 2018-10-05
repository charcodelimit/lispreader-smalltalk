# macros
sharpLoadTimeEvaluation: aStream n: unused

	unused ifNotNil: [self error].

	^ lisp eval: (self read: aStream) inCons