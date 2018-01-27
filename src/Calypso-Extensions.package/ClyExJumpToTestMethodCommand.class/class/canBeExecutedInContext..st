testing
canBeExecutedInContext: aToolContext
	^ (super canBeExecutedInContext: aToolContext) and: [ 
		aToolContext lastSelectedClass isTestCase not and: [ 
			(self existsTestMethodFor: aToolContext lastSelectedMethod) ] ]