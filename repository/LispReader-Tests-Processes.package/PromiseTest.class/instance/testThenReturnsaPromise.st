testing - monad
testThenReturnsaPromise
	| p |
	p := Promise new then: [:v | v * 2].
	self assert: Promise equals: p class.