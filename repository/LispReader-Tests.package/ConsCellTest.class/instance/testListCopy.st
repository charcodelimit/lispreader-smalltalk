tests
testListCopy

	| list1 list2  |

	list1 := #(1 2 3) asCons.
	list2 := list1 listCopy.
	list2 addLast: 55.

	self assert: list1= #(1 2 3) asCons.
	self assert: list2 = #(1 2 3 55) asCons.

	(list1 nthCell: 1) setcar: 22.

	self assert: list1= #(1 22 3) asCons.
	self assert: list2 = #(1 2 3 55) asCons.