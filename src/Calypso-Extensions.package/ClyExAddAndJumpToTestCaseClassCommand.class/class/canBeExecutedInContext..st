testing
canBeExecutedInContext: aToolContext
	^ aToolContext isClassSelected and: [ 
		aToolContext lastSelectedClass isTestCase not and: [ 
			(self existsTestCaseFor: aToolContext lastSelectedClass) not ] ]