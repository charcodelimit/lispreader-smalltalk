as yet unclassified
symbolValueBinding: aSymbol

	| b |

	(b := self symbolBinding: aSymbol) ifNotNil: [^ b].

	^ (upperBindings ifNil: [^ nil]) symbolValueBinding: aSymbol