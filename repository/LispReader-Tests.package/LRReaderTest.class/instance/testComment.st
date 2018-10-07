tests-macro characters
testComment
	| exp |
	exp := self lispExpressionFor: '; comment'.
	self assert: exp equals: #'<eof>'