tests-symbols
testEscapedSymbols
	| expression tests |
	tests := Dictionary new.
	tests at: '\( ;The symbol whose name is (' put: '('.
	tests at: '\+1 ;The symbol whose name is +1' put: '+1'.
	tests at: '+\1 ;Also the symbol whose name is +1' put: '+1'.
	tests at: '\frobboz ;The symbol whose name is fROBBOZ' put: 'fROBBOZ'.
	tests at: '3.14159265\s0 ;The symbol whose name is 3.14159265s0' put: '3.14159265s0'.
	"Test symbol reading"
	tests
		keysAndValuesDo: [ :key :value | 
			expression := self lispExpressionFor: key.
			self assert: expression asString asLowercase = value asLowercase ]