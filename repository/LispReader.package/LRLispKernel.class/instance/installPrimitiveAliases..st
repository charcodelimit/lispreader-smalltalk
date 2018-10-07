private - initialization
installPrimitiveAliases: bindings

	| aliases |

	aliases := bindings collect: [:b | b copy].

	"clean up previous definitions"
	environment allFboundSymbols do: [:f |  | p |
		(((p := environment symbolFunction: f ) isLKPrimitive)
			and: [(self class primitives includes: p selector) not])
		ifTrue: [environment removeSymbolFunction: f]].

	"create new definitions"
	aliases do: [:alias | 
		(environment symbolFunction: alias key  
					ifNone: [environment addSymbolFunction: alias]) isSymbol 
		ifTrue: [environment addSymbolFunction: alias]].


