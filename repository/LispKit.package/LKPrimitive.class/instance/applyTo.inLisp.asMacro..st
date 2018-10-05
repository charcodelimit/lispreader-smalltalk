as yet unclassified
applyTo: aConsCell inLisp: aLisp asMacro: mflag

	(aConsCell isNil | mflag)
			ifTrue: [^ aLisp perform: selector with: aConsCell].

	^ aLisp perform: selector with: (aLisp evalList: aConsCell).