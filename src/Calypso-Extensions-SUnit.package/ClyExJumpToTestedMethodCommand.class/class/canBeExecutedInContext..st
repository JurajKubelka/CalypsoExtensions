testing
canBeExecutedInContext: aToolContext
	^ (super canBeExecutedInContext: aToolContext) and: [ 
		aToolContext lastSelectedClass isTestCase and: [ 
			(aToolContext lastSelectedObjectIn: aToolContext selectedMethodItems)
			 hasProperty: ClyExTestingMethodProperty ] ]