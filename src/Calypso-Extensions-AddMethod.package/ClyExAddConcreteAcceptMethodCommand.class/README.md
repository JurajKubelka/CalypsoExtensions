I add concrete accept: methods to selected classes.
For example

MyClass >> accept: aVisitor
	^ aVisitor visitMyClass: self
