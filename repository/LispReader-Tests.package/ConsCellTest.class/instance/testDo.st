tests
testDo

	| list sum |

	list := #(1 2 3) asCons.
	sum := 0.
	list do: [:c | sum := sum + c]. 

	self assert: sum = 6
