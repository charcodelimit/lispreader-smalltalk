private - subclasses may implement
aliasForPrimitive: aSymbol

	"return the lispish symbol associated to the function or macro defined by primitive method aSymbol"

	| alias ups |

	alias := aSymbol allButLast.
	alias := alias copyReplaceAll: 'LISP' with: ''.
	(aSymbol endsWith: 'Star:')
		ifTrue: [alias := (alias allButLast: 4), '*'].	
	alias := alias copyReplaceAll: 'ONE' with: '-1'.
	alias := alias copyReplaceAll: 'TO' with: '-to-'.
	(ups := alias select: [:c | c isUppercase])	ifNotEmpty: 
	[
		alias := (ups size = 1 and: [alias last == $P])
			ifTrue: [alias asLowercase] 
			ifFalse: [alias linkAtCaps]
	].

	^ alias asSymbol
	