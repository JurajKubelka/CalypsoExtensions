accessing
testCaseClass
	"Return created class comment. 
	It should be called after the test case class creation."
	^ targetMethod methodClass environment at: self testClassName