accessing
methods
	cursor ifNil: [ 
		| references |
		references := ClyClassReferences to: classes.
		references variables: (references variables reject: [ :assoc | assoc key isNil ]).
		cursor := ClySystemNavigationEnvironment 
			queryCurrentImageFor: references ].
	^ cursor retrieveAllActualObjects