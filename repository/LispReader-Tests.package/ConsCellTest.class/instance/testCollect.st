tests
testCollect

	| list |

	list := #(1 2 3) asCons.

	self assert: (list collect: [:c | c + 1]) = #(2 3 4) asCons.
	self assert: list = #(1 2 3) asCons.
