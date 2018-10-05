string format conversion
representString: aString

	"transcode aString from Smalltalk format into this lisp format"

	| str |

	str := aString.
	str := str copyReplaceAll: '\' with: '\\'.
	str := str copyReplaceAll: '"' with: '\"' .

	self escapeSequences do: [:assoc |
		str := str copyReplaceAll: assoc value with: assoc key].            

	^ str