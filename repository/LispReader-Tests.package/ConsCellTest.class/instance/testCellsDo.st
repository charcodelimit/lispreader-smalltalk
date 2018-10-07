tests
testCellsDo

	| list sum |

	list := #(1 2 3) asCons.
	sum := 0.
	list cellsDo: [:c | sum := sum + c car]. 

	self assert: sum = 6
