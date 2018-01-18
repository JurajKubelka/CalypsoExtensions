testing
canBeExecutedInContext: aToolContext
	^ aToolContext isClassSelected and: [ 
		aToolContext selectedClasses anySatisfy: [ :eachClass | 
			(eachClass includesSelector: #initialize) not ] ]