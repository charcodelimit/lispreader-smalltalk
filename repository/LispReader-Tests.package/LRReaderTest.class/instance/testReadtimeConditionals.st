tests-macro characters
testReadtimeConditionals
	self should: [self lispExpressionFor: '#+clisp (clisp:quit)'] raise: NotYetImplemented.
	self should: [self lispExpressionFor: '#-clisp 42'] raise: NotYetImplemented.
