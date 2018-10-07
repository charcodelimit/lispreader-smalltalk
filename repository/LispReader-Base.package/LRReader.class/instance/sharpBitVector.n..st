# macros
sharpBitVector: aStream n: aNumber
	"CLTL2 p.598"
	| v str lowestBit stream |
	aStream atEnd
		ifTrue: [^ LRBitVector value: 0].
	str := (self read: aStream) asString.
	v := LRBitVector readFrom: str.
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
					v := LRBitVector readFrom: stream contents]].
	^ v