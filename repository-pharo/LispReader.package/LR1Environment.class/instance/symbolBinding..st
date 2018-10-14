as yet unclassified
symbolBinding: aSymbol

	 ^ self symbolValues array at: (self symbolValues scanFor: aSymbol)