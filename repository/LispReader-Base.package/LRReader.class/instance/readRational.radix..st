private-reading
readRational: aStream radix: aRadix
	"READs a rational with base aRadix from stream aStream.
	RETURNs the Fraction or Integer value"
	| numeralString char value numerator denominator |
	denominator := 1.
	numeralString := self readNumeral: aStream radix: aRadix.
	numerator := Number readFrom: numeralString base: aRadix.
	value := numerator.
	((char := aStream peek) notNil
			and: [char == $/])
		ifTrue: [aStream next.
			numeralString := self readNumeral: aStream radix: aRadix.
			denominator := Number readFrom: numeralString base: aRadix.
			value := numerator / denominator].
	^ value