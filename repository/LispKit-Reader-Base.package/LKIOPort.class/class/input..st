as yet unclassified
input: aStream

	aStream ifNil: [self error: 'no stream specified'].

	^ self new 
		status: #in;
		inStream: aStream