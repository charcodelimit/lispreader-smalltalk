LISP-functions-interpreter
eval: aConsCell

"(eval FORM [ENVIRONMENT])
Evaluate FORM in the specified ENVIRONMENT (which defaults to the interaction top level), return its value"

	^ self eval: aConsCell car 
		inEnvironment: (aConsCell cadr ifNil: [self topmostLisp environment])

	
