testing - monad
testThenPermitsChainingOfPromises
	| p q r |
	p := Promise new.
	q := p then: [:v | v * 2].
	r := q then: [:v | v + 1].
	p resolveWith: 4.
	self assert: 4 * 2 equals: q value.
	self assert: (4 * 2 + 1) equals: r value.