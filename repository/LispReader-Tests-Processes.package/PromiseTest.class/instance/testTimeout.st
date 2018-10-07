testing
testTimeout
	| promise |
	promise := Promise new.
	self shouldnt: [promise waitTimeoutMSecs: 1].
	self shouldnt: [promise isResolved].
	self shouldnt: [promise isRejected].
	promise resolveWith: 45.
	self should: [promise waitTimeoutMSecs: 1].
	self should: [promise isResolved].
	self shouldnt: [promise isRejected].