private - subclasses may implement
standardInputPort
	"the default port for input, used by read functions"

	upperLisp ifNotNil: [^upperLisp standardInputPort	"safer"].
	^inputPort ifNil: [inputPort := LKIOPort forInput]