testing
canBeExecutedInContext: aToolContext
	"Subclasses add methods only on instance sides"
	^ aToolContext isClassSelected and: [ 
		aToolContext lastSelectedClass isTestCase not and: [ 
			(self existsTestCaseFor: aToolContext lastSelectedClass) not ] ]