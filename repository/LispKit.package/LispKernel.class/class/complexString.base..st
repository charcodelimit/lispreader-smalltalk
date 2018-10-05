private - subclasses may implement
complexString: aComplex base: base

	"printed representation for aComplex"

	^ '#C(', (aComplex real printStringBase: base), ' ', 
		(aComplex imaginary printStringBase: base), ')'