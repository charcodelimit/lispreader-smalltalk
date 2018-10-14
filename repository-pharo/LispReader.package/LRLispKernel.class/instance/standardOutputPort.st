private - subclasses may implement
standardOutputPort
	"the default port for output, used by print functions"

	upperLisp ifNotNil: [^upperLisp standardOutputPort	"safer"].
	^outputPort ifNil: [outputPort := LRIOPort forOutput]