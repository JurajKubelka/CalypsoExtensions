accessing
testClassCategoryFrom 
	"Return a category name for a new test case class"
	^ (targetClass category asString, '-Tests') asSymbol