bit manipulation
setBitAt: anInteger 
	"SET bit at position anInteger to 1"
	value := value bitOr: 1 << (anInteger - 1)