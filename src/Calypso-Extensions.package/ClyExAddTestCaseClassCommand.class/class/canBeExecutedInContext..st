testing
canBeExecutedInContext: aToolContext
	"Subclasses add methods only on instance sides"
	self flag: 'aClass isTestCase'.
	^ aToolContext isClassSelected