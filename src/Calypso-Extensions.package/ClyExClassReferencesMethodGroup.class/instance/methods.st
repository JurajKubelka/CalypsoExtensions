accessing
methods
	cursor ifNil: [ 
		| references theNonMetaClasses |
		theNonMetaClasses := classes collect: #theNonMetaClass.
		references := ClyClassReferences to: theNonMetaClasses.
		references variables: (references variables reject: [ :assoc | assoc key isNil ]).
		cursor := ClySystemNavigationEnvironment 
			queryCurrentImageFor: references ].
	^ cursor retrieveAllActualObjects