testing
canBeExecutedInContext: aToolContext
	^ aToolContext metaLevelScope = ClyInstanceSideScope
		and: [ aToolContext isClassSelected
				and: [ aToolContext selectedClasses
						anySatisfy: [ :eachClass | (self hasInitializeMethod: eachClass) not ] ] ]