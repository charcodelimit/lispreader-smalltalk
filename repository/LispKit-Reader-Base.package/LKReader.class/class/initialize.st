initialization
initialize
	
	"LKReader initialize "
	"see Common Lisp the Language, 2nd edition, section 22.1.1"

	SyntacticTypes := Array new: 256 withAll: #constituent. "default"
	SyntacticTypes 
		atAll: #(9 10 12 13 32 160) put: #whiteSpace. "tab lf ff cr space +PLT compatibility"

	SyntacticTypes 
		atAll: (#($" $; $' $( $) $, $`) collect: [:c | c asciiValue]) 
		put: #terminatingMacro.

	SyntacticTypes at: $\ asciiValue put: #singleEscape.
	SyntacticTypes at: $| asciiValue put: #multipleEscape.
	SyntacticTypes at: $# asciiValue put: #nonTerminatingMacro.
		
	Macros := Dictionary new.
	{
		$# -> #sharpMacro:.
		$( -> #openList:.
		$) -> #closeList:.
		$' -> #quote:.
		$; -> #comment:.
		$" -> #string:.
		$` -> #backquote:.
		$, -> #unquote:.	
	}
	do: [:assoc | Macros add: assoc].

	SharpMacros := Dictionary new.
	{
		$# -> #sharpLabelReference:n:.
		$( -> #sharpVector:n:.
		$' -> #sharpFunction:n:.
		$* -> #sharpBitVector:n:.
		$= -> #sharpLabel:n:.
		$\ -> #sharpCharacter:n:.
		$, -> #sharpLoadTimeEvaluation:n:.
		$| -> #sharpBalancedComment:n:.
		$- -> #sharpReadTimeUnless:n:.
		$+ -> #sharpReadTimeWhen:n:.
		$. -> #sharpReadTimeEvaluation:n:.
		$: -> #sharpUninternedSymbol:n:.
		$a -> #sharpArray:n:.
		$A -> #sharpArray:n:.
		$b -> #sharpBinaryRational:n:.
		$B -> #sharpBinaryRational:n:.
		$c -> #sharpComplexNumber:n:.
		$C -> #sharpComplexNumber:n:.
		$o -> #sharpOctalRational:n:.
		$O -> #sharpOctalRational:n:.
		$p -> #sharpPathName:n:.
		$P -> #sharpPathName:n:.
		$r -> #sharpRadixNRational:n:.
		$R -> #sharpRadixNRational:n:.
		$s -> #sharpStructure:n:.
		$S -> #sharpStructure:n:.
		$x -> #sharpHexaRational:n:.
		$X -> #sharpHexaRational:n:.
		$; -> #sharpComment:n:.
		$< -> #sharpNonReadable:n:.
		"Specific to Smalltalk"
		$_ -> #sharpMethod:n:
	}
	do: [:assoc | SharpMacros add: assoc].

	CharacterNames := Dictionary new.
	{
		'newline' -> Character lf.
		'tab' -> Character tab.
		'linefeed' -> Character linefeed.
		'space' -> Character space.			
		'backspace' -> Character backspace.			
		'escape' -> Character escape.			
		'return' -> Character cr.			
		'rubout' -> Character delete.	
		'null' -> (Character codePoint: 0).				
	}
	do: [:assoc | CharacterNames add: assoc].

	"self initialize"