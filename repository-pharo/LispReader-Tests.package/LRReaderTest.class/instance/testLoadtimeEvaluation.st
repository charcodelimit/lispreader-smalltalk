tests-macro characters
testLoadtimeEvaluation
	self should: [self lispExpressionFor: '#,(+ 1 2)'] raise: NotYetImplemented.