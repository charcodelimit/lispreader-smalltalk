*LispKit
printStringForLisp: aLisp limitedTo: limit

	| limitedString |
	limitedString := String streamContents: [:s | self printOn: s forLisp: aLisp] limitedTo: limit.
	limitedString size < limit ifTrue: [^ limitedString].
	^ limitedString , '...'