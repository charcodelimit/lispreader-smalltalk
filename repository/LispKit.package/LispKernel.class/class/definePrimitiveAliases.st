private
definePrimitiveAliases

	| aliases |
	
	"does the same job as the instance-side #definePrimitiveAliases, only for all instances of the receiver"

	aliases := self primitives select: [:prim | prim last == $:] 
		thenCollect: [:prim  | 
			(self aliasForPrimitive: prim) -> (LKPrimitive selector: prim for: self)].
	
	(self allInstances select: [:lisp | lisp upperLisp isNil])
		do: [:lisp | [lisp installPrimitiveAliases: aliases] on: Error do: [nil]]
