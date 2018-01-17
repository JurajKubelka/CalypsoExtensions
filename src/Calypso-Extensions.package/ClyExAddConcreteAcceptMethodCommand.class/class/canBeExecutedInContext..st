testing
canBeExecutedInContext: aToolContext
	^ aToolContext isClassSelected and: [ 
		aToolContext selectedClasses anySatisfy: [ :eachClass | 
			(eachClass selectors includes: #accept:) not or: [ 
				(eachClass compiledMethodAt: #accept:) isSubclassResponsibility ] ] ]