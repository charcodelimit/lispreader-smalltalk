testing
testSingleResolver
	| promise sum |
	sum := 0.
	promise := Promise new.
	promise whenResolved: [:val | sum := sum + val].
	promise resolveWith: 5.
	self assert: 5 equals: sum.
	