printing
fullPrintStringForLisp: aLisp

	^ String streamContents: [:s | self printOn: s forLisp: aLisp]