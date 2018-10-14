bit manipulation
bitAt: anInteger
	"RETURNs the value of bit at position anInteger"

	| mask |
	mask := 1 << (anInteger - 1).
	^ (value bitAnd: mask) >> (anInteger - 1)