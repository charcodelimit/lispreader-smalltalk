*LispKit-evaluation
lambdaFormBindingsWith: aConsCell

	"the receiver being a lambda form,  return the bindings when given aConsCell as arguments"

	^ (self second ifNil: [^ #()]) bindingsWithArguments: aConsCell
