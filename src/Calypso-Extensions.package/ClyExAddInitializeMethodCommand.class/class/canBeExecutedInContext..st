testing
canBeExecutedInContext: aToolContext
	^ (super canBeExecutedInContext: aToolContext) and: [
			aToolContext selectedClasses anySatisfy: [ :eachClass | 
				eachClass isTestCase not and: [ 
					(self constructedMethodSelectorExistsInClass: eachClass) not ] ] ]