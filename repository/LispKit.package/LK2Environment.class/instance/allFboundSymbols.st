as yet unclassified
allFboundSymbols

	| env |

	env := self.

	^ (Array streamContents: [:str |
			[env notNil] whileTrue: [
				str nextPutAll: env symbolFunctions keys.
				env := env parent]]) 
		sort 