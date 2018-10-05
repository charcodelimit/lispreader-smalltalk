private - subclasses may implement
escapeSequences

	"subclasses can define their own escape sequences"

	^ {
		'\n' -> String lf. 
		'\r' -> String cr .            
		'\t' -> String tab.   
		}