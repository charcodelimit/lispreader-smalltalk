tests
testAddLast

	| list1 list2  |

	list1 := #(1 2 3) asCons.
	list2 := #(5 4) asCons.
	self assert: (list1 addLast: list2) = #(1 2 3 (5 4)) asCons.
	self assert: list1= #(1 2 3 (5 4)) asCons.
	self assert: list2 = #(5 4) asCons.