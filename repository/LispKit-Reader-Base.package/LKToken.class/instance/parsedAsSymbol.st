parsing
parsedAsSymbol

	| sym |
	sym :=  self contents asSymbol.	
	^ (constants ifNil: [^ sym]) at: sym ifAbsent: [sym]
