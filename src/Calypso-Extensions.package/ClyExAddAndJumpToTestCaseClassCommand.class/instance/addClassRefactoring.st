private
addClassRefactoring
	^ RBAddClassRefactoring
		addClass: self testClassName
		superclass: #TestCase
		subclasses: #()
		category: self testClassCategory