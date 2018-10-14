as yet unclassified
symbolFunctionsDictionaryFor: aSymbol

	"look-up for the dictionary in which a function binding for aSymbol should be stored"

	((self symbolFunctions includesKey: aSymbol) 
		or: [upperBindings isNil])
		ifTrue: [^ self symbolFunctions].

	^ upperBindings symbolFunctionsDictionaryFor: aSymbol
