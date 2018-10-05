private - interpreter
eval: anObject inEnvironment: aLKEnvironment

	^ (self copy
		environment: aLKEnvironment;
		upperLisp: self;
		upperTail: nil;
		upperHead: nil) evalObject: anObject multipleValue: true