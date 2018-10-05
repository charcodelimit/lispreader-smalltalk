# macros
sharpReadTimeEvaluation: aStream n: unused

	| sexp |

	unused ifNotNil: [self error].

	^ lisp eval: (sexp := self read: aStream) inCons
