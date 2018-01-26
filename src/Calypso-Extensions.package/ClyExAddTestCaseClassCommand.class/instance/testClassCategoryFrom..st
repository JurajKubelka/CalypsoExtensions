accessing
testClassCategoryFrom: aClass 
	"Return a category name for a new test case class"
	^ (aClass category asString, '-Tests') asSymbol