testing
testChainedResolvers
	| promise1 promise2 result |
	promise1 := Promise new.
	promise2 := Promise new.
	promise1 whenResolved: [:bool | promise2 resolveWith: bool not].
	promise2 whenResolved: [:bool | result := bool].
	promise1 resolveWith: false.
	self should: [result].