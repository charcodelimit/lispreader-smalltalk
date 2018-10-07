private - subclasses may implement
constantBindings

	"constant bindings. those cannot be changed, see #checkSymbol:"

	^ Dictionary 
		with: #t -> self trueValue
		with: #nil -> nil