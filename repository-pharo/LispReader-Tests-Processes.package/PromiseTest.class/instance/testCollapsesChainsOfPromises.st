testing - monad
testCollapsesChainsOfPromises
	"The monadic bind operator has signature (m a -> (a -> m b) -> m b): that is, in our setting,
	the block given to `then:` is expected to return a *Promise* of a value, not a value directly.
	It is convenient to accept non-promise values and automatically lift them into the monad,
	but we must also ensure we treat the case where a `then:`-block yields a Promise correctly."
	| p q r |
	p := Promise new.
	q := p then: [:v | Promise unit: v * 2].
	r := q then: [:v | Promise unit: v + 1].
	p resolveWith: 4.
	self assert: 4 * 2 equals: q value.
	self assert: (4 * 2 + 1) equals: r value.