testing - monad
testAnErrorInThenRejectsPromise
	| p q |
	p := Promise new.
	q := p then: [:v | KeyNotFound signal].
	p resolveWith: 1.
	self deny: p isRejected description: 'Original Promise rejected'.
	self assert: q isRejected description: 'Broken Promise not rejected'.