tests
testSymbolsForBinding

	self assert: #(x y #'&rest' z) asCons symbolsForBinding 
					= {#x . #y . #z}.

	self assert: (ConsCell car: #x cdr: #z) symbolsForBinding
					= {#x . #z}.

	self assert: #(x y z k) asCons symbolsForBinding 
					= {#x . #y . #z . #k}.

	self assert: #(x y) asCons symbolsForBinding 
					= {#x . #y}.

	self assert: #(#'&rest' args) asCons symbolsForBinding
					= {#args}.

	self assert: #args symbolsForBinding
					= {#args}.

	self assert: #(x #'&optional' y) asCons symbolsForBinding
					= {#x . #y}.
