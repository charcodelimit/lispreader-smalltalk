private
lispExpressionFor: aString
	| reader stream expression |
	reader := LRReader for: LRLispKernel new.
	stream := ReadStream on: aString.
	expression := reader read: stream.
	^ expression