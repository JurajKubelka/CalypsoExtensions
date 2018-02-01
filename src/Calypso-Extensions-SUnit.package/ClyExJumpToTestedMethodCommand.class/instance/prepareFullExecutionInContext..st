execution
prepareFullExecutionInContext: aToolContext
	| methodItem |
	super prepareFullExecutionInContext: aToolContext.
	methodItem := aToolContext lastSelectedObjectIn: aToolContext selectedMethodItems.
	property := methodItem getProperty: ClyExTestingMethodProperty