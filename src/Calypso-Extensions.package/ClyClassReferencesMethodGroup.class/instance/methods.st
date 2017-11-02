accessing
methods
	cursor ifNil: [ 
		cursor := ClySystemNavigationEnvironment 
			queryCurrentImageFor: (ClyClassReferences to: classes) ].
	^ cursor retrieveAllActualObjects