tests-symbols
testSymbols
	| expression tests negativeCase |
	tests := Dictionary new.
	tests at: 'FROBBOZ ;The symbol whose name is FROBBOZ' put: 'FROBBOZ'.
	tests at: 'frobboz ;Another way to notate the same symbol' put: 'frobboz'.
	tests at: 'fRObBoz ;Yet another way to notate it' put: 'fRObBoz'.
	tests at: 'unwind-protect ;A symbol with a - in its name' put: 'unwind-protect'.
	tests at: '+$ ;The symbol named +$' put: '+$'.
	tests at: '1+ ;The symbol named 1+' put: '1+'.
	tests at: 'pascal_style ;This symbol has an underscore in its name' put: 'pascal_style'.
	tests
		at:
			'b^2-4*a*c ;This is a single symbol!
	; It has several special characters in its name'
		put: 'b^2-4*a*c'.
	tests at: 'file.rel.43 ;This symbol has periods in its name' put: 'file.rel.43'.
	tests at: '/usr/games/zork ;This symbol has slashes in its name' put: '/usr/games/zork'.
	"Test symbol reading"
	tests
		keysAndValuesDo: [ :key :value | 
			expression := self lispExpressionFor: key.
			self assert: expression asString asLowercase = value asLowercase ].
	"Test negative case"
	negativeCase := '+1 ;This is the integer 1, not a symbol'.
	expression := self lispExpressionFor: negativeCase.
	self assert: expression isSymbol not.
	self assert: expression == 1