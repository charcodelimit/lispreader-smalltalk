string format conversion
stringRepresentedBy: aString

	"transcode aString from this lisp format (i.e. with specific escape sequences) into Smalltalk format"

	| str |

	str := aString.
	(str includes: $\) ifFalse: [^ str].

	str := str copyReplaceAll: '\\' with: '<-<double-slash-here>->'. 
	str := str copyReplaceAll: '#\' with: '<-<#-slash-here>->'. 
	str := str copyReplaceAll: '\"' with: '"'. 
	self escapeSequences do: [:assoc |
		str := str copyReplaceAll: assoc key with: assoc value].    

	str := str copyReplaceAll: '<-<#-slash-here>->' with: '#\'.
	^ str copyReplaceAll: '<-<double-slash-here>->' with: '\'.