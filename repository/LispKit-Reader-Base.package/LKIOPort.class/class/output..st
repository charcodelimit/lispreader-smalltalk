as yet unclassified
output: aStream

	aStream ifNil: [self error: 'no stream specified'].

	^ self new 
		status: #out;
		outStream: aStream