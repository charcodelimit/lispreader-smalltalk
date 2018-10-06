bit manipulation
resetBitAt: anInteger 
	"SET bit at position anInteger to 1"
	| mask |
	mask := ((1 << value highBit) - 1) bitXor:  1 << (anInteger - 1) .
	value := value bitAnd: mask