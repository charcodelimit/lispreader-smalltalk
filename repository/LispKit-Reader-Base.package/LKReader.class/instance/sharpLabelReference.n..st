# macros
sharpLabelReference: aStream n: aNumber 

	"if the reference is undefined at this point, let it be a dummy object to be replaced in place with the correct one later on (see the #becomeForward: call in #sharpLabel:n:"

	^ self labels at: aNumber 
			ifAbsentPut: {#badRef . aNumber}