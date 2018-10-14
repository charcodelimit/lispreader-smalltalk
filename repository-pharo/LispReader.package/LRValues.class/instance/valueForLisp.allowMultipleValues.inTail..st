as yet unclassified
valueForLisp: aLisp allowMultipleValues: mvflag inTail: tflag

	mvflag ifFalse: [^ self asOneLispValue].
	^ self