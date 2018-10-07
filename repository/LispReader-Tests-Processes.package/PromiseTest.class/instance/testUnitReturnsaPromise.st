testing - monad
testUnitReturnsaPromise
	| p |
	p := Promise unit: 1.
	self assert: Promise equals: p class.
	self assert: p isResolved.