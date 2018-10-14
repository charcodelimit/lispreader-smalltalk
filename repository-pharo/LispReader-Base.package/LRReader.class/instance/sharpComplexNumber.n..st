# macros
sharpComplexNumber: aStream n: unused

	| cons |

	unused ifNotNil: [self error].

	cons := self read: aStream.
	^ Complex real: cons car imaginary: cons cadr