testing
canBeExecutedInContext: aToolContext
	"Subclasses add methods only on instance sides"
	^ aToolContext metaLevelScope = ClyInstanceSideScope
		and: [ aToolContext isClassSelected ]