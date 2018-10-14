tests
testBindings
	self assert: (#(lambda #() 5) asCons lambdaFormBindingsWith: nil) = #().
	self
		assert:
			(#(x y #'&rest' z) asCons bindingsWithArguments: #(1 2 3 4) asCons)
				=
					{(#x -> 1).
					(#y -> 2).
					(#z -> #(3 4) asCons)}.
	self
		assert:
			((ConsCell car: #x cdr: #z) bindingsWithArguments: #(1 2 3 4) asCons)
				=
					{(#x -> 1).
					(#z -> #(2 3 4) asCons)}.
	self
		assert:
			(#(x y z k) asCons bindingsWithArguments: #(1 2 3 4) asCons)
				=
					{(#x -> 1).
					(#y -> 2).
					(#z -> 3).
					(#k -> 4)}.
	self
		assert:
			(#(x y) asCons bindingsWithArguments: #(1 2) asCons)
				=
					{(#x -> 1).
					(#y -> 2)}.
	self assert: (#(#'&rest' args) asCons bindingsWithArguments: nil) = {(#args -> nil)}.
	self assert: (#args bindingsWithArguments: #(1 2) asCons) = {(#args -> #(1 2) asCons)}.
	self
		assert:
			(#(x #'&optional' y) asCons bindingsWithArguments: #(1 2) asCons)
				=
					{(#x -> 1).
					(#y -> 2)}.
	self
		assert:
			(#(x #'&optional' y) asCons bindingsWithArguments: #(1) asCons)
				=
					{(#x -> 1).
					(#y -> nil)}