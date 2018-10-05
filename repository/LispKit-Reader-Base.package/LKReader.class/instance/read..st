meta-object-protocol
read: aStream

	"this follows the algorithm described in
	Common Lisp the Language, 2nd edition, section 22.1.1"

	| x y token type ytype nme escflag caseMatters |

	token := self token void.
	token constants: lisp constantBindings.	
	type := #whiteSpace.
	nme := 0.
	escflag := false.
	caseMatters := lisp ifNil: [true] ifNotNil: [lisp ignoresCase not].
	
	[type == #whiteSpace] whileTrue: [
"step 1"
		aStream atEnd ifTrue: [^ LKIOPort eof].
		x := aStream next.
		type := self class syntacticTypesAt: (x asciiValue).
"step 4"
		(type == #terminatingMacro or: [type == #nonTerminatingMacro])
		ifTrue:	[	| val |
					val := self perform: (self class macros at: x) with: aStream.
					val == self emptyListMarker ifTrue: [^ nil].
					val ifNotNil: [^ val].
					type := #whiteSpace]].	
"step 5"
	type == #singleEscape 
		ifTrue: [token nextPut: aStream next. escflag := true].
"step 6"
	type == #multipleEscape ifTrue: [nme := nme + 1].
"step 7"	
	(nme even and: [type == #constituent]) 
		ifTrue: [token nextPut: (caseMatters ifFalse: [x asLowercase]
														ifTrue: [x])].
"step 8"
	[true] whileTrue: [	
		[nme even] whileTrue: [	
			y := aStream peek.
			(y isNil "e.g.   aStream atEnd"
				or: [(ytype := self class syntacticTypesAt: (y asciiValue)) 
						== #terminatingMacro or: [ytype == #whiteSpace]])
 				ifTrue: [(nme isZero & escflag not) 
							ifFalse: [^ token contents asSymbol]
							ifTrue: [^ token parsed]].
			aStream next. 
			(ytype == #constituent or: [ytype == #nonTerminatingMacro])
				ifTrue: [token nextPut: (caseMatters ifFalse: [y asLowercase]
														ifTrue: [y])].
			ytype == #singleEscape 
				ifTrue: [token nextPut: aStream next. escflag := true].
			ytype == #multipleEscape ifTrue: [nme := nme + 1]].
"step 9"
		[nme odd] whileTrue: [	
			aStream atEnd ifTrue: [self error: 'missing escape'].
			y := aStream next.
			ytype := self class syntacticTypesAt: (y asciiValue). 
			ytype == #multipleEscape 
				ifTrue: [nme := nme + 1]
				ifFalse: [ ytype == #singleEscape
								ifTrue: [token nextPut: aStream next. escflag := true]
								ifFalse: [token nextPut: y]]]].
