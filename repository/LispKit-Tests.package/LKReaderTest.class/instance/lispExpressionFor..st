private
lispExpressionFor: aString
	| reader stream expression |
	reader := LKReader for: LispKernel new.
	stream := ReadStream on: aString.
	expression := reader read: stream.
	^ expression