tests-symbols
testFullyEscapedSymbols
	| expression tests |
	tests := Dictionary new.
	tests at: '|"| ;The same as writing \"' put: '"'.
	tests at: '|(b^2) - 4*a*c| ;The name is (b^2) - 4*a*c' put: '(b^2) - 4*a*c'.
	tests at: '|frobboz| ;The name is frobboz, not FROBBOZ' put: 'frobboz'.
	tests at: '|APL\360| ;The name is APL360, because the \ quotes the 3' put: 'APL360'.
	tests at: '|APL\\360| ;The name is APL\360' put: 'APL\360'.
	tests at: '|apl\\360| ;The name is apl\360' put: 'apl\360'.
	tests at: '|\|\|| ;Same as \|\|: the name is ||' put: '||'.
	tests at: '|(B^2) - 4*A*C| ;The name is (B^2) - 4*A*C;' put: '(B^2) - 4*A*C'.
	"Test symbol reading"
	tests
		keysAndValuesDo: [ :key :value | 
			expression := self lispExpressionFor: key.
			self assert: expression asString asLowercase = value asLowercase ]