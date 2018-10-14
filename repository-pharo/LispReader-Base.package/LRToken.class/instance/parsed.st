parsing
parsed

	(couldBeNumber not or: [number isNil]) ifTrue: [^ self parsedAsSymbol].

	n1 ifNotNil: 
	[
		(couldBeFraction and: [number isZero not]) ifTrue: [^ n1/number].
		couldBeExponent ifTrue: [^ n1 asFloat * (10 raisedTo: (number * sign))].
		^ self parsedAsSymbol
	].

	^ number * sign