execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	targetMethod := aToolContext lastSelectedMethod.