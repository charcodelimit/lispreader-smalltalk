as yet unclassified
input: aStream output: bStream

	^ self new 
		status: #bi;
		outStream: aStream;
		inStream: aStream