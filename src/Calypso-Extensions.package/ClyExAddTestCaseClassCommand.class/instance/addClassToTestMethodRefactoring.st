private
addClassToTestMethodRefactoring
	^ ClyExOverrideMethodRefactoring
		addMethod: self classToTestMethodBody
		toClass: [ self testClassNameFrom ]
		inProtocols: #accessing