tests
testLabel
	"self new testCircularList"

	| expression |
	expression := self lispExpressionFor: '((a b) . #1=(#2=(p q) foo #2# . #1#))'.
	self assert: expression isConsCell.
	self assert: expression isList not.
	expression := self lispExpressionFor: '((a b) . (#2=(p q) foo #2# . (bar nil)))'.
	self assert: expression isConsCell.
	self assert: expression isList.
	self assert: expression length == 6.
	expression := self lispExpressionFor: '((a b) . #1=(#2=(p q) foo #2# . (#1# . nil)))'.
	self assert: expression isConsCell.
	self assert: expression isList.
	self assert: expression length == 5.
	expression := self lispExpressionFor: '((a b) . #1=(#2=(p q) #1# foo  . nil))'.
	self assert: expression isConsCell.
	self assert: expression isList.
	self assert: expression length == 4