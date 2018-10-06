testing - monad
testCannotRejectFulfilledPromise
	| p |
	p := Promise unit: 1.
	p rejectWith: Error new.
	self assert: p isResolved.
	self assert: 1 equals: p value.
