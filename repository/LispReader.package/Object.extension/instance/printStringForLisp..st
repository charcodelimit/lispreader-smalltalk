*LispReader
printStringForLisp: aLisp

	^ String streamContents: [:s | self printOn: s forLisp: aLisp]