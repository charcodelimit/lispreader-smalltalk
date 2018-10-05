as yet unclassified
selector: aSymbol for: aLisp

	(aLisp specialForms pointsTo: aSymbol) 
		ifTrue: [^ LKPrimitiveSpecial new selector: aSymbol; lisp: aLisp].

	^ self new selector: aSymbol; lisp: aLisp
		
