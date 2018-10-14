accessing
shortString
	"RETURNs the smallest possible string representation of bit vector with vector size"
	^ String
		streamContents: [:s | self printShortOn: s]