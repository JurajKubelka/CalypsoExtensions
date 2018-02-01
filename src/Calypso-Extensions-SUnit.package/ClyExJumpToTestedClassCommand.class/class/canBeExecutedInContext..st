testing
canBeExecutedInContext: aToolContext
	^ aToolContext isClassSelected and: [ 
		aToolContext lastSelectedClass isTestCase ]