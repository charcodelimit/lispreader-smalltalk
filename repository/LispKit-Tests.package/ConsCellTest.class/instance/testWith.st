tests
testWith

	| list1 list2  |

	list1 := #(1 2 3 4 5) asCons.
	list2 := #(5 4 3 2 1) asCons.
	self assert: (list1 with: list2 collect: [:i :j | i+j]) = #(6 6 6 6 6) asCons.
	self assert: list1 = #(1 2 3 4 5) asCons.
	self assert: list2 = #(5 4 3 2 1) asCons