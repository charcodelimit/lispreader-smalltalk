tests-macro characters
testReadtimeEvaluation
	self should: [  self lispExpressionFor: '#.(+ 1 2)'] raise: NotYetImplemented .
