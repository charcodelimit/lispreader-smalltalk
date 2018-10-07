to do
testCyclicPrinting2

	| cons str |

	cons := #(1 2 3 4 5) asCons.
	cons cdr setcar: cons.
	cons cddr cddr setcdr: cons cddr cdr.

	str := cons lispPrintString.

 	self assert: str equals: '#1=(1 #1# 3 . #2=(4 5 . #2#))'.
