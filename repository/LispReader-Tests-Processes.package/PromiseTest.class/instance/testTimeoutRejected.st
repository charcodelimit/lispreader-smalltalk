testing
testTimeoutRejected
	| promise |
	promise := Promise new.
	self shouldnt: [promise waitTimeoutMSecs: 1].
	self shouldnt: [promise isResolved].
	self shouldnt: [promise isRejected].
	promise rejectWith: 45.
	self shouldnt: [promise waitTimeoutMSecs: 1].
	self shouldnt: [promise isResolved].
	self should: [promise isRejected].