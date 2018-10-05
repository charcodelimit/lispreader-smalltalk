as yet unclassified
symbolFunction: aSymbol

	"look-up for the function bound to aSymbol"

	 ^ self symbolFunctions at: aSymbol 
		ifAbsent: [upperBindings symbolFunction: aSymbol]
	