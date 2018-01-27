private
addClassToTestMethodRefactoring
	^ ClyExOverrideMethodRefactoring
		addMethod: self classToTestMethodBody
		toClass: [ self testClassName ]
		inProtocols: #accessing