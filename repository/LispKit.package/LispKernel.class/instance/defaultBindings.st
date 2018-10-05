private - subclasses may implement
defaultBindings

	"return a Dictionary defining all variables that should be present when the interpreter starts"

	| db |

	db := IdentityDictionary new.
	db add: #'*standard-output*' -> self standardOutputPort.
	db add: #'*standard-input*' -> self standardInputPort.
	db add: #'*print-circle*' -> nil.
	db add: #'*print-length*' -> nil.
	db add: #'*print-level*' -> nil.
	db add: #'*features*' -> nil.
	db add: #'*u-index*' -> 0.

	^ db