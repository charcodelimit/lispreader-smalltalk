testing - monad
testCanRejectPromise
	| p |
	p := Promise new.
	p rejectWith: Error new.