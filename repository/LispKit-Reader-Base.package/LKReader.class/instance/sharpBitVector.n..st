# macros
sharpBitVector: aStream n: aNumber
	"CLTL2 p.598"
	| v str lowestBit stream |
	aStream atEnd
		ifTrue: [^ LKBitVector value: 0].
	str := (self read: aStream) asString.
	v := LKBitVector readFrom: str.
	aNumber
		ifNotNil: [v numBits > aNumber
				ifTrue: [self error: 'incorrect vector format'].
			v numBits < aNumber
				ifTrue: [lowestBit := Character digitValue: v lowestBit.
					stream := WriteStream
								on: (String new: 8191).
					stream nextPutAll: str.
					aNumber - v numBits
						timesRepeat: [stream nextPut: lowestBit].
					v := LKBitVector readFrom: stream contents]].
	^ v