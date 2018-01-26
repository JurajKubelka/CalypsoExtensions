testing
canBeExecutedInContext: aToolContext
	^ (super canBeExecutedInContext: aToolContext) and: [ 
		aToolContext selectedClasses anySatisfy: [ :eachClass | 
			(self constructedMethodSelectorExistsInClass: eachClass) not or: [ 
				(eachClass compiledMethodAt: #accept:) isSubclassResponsibility not ] ] ]