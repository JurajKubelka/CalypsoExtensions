I add initialize methods to selected classes.
I add only on the instance side.
I do not override existing initialize methods. 
If any selected class already has the method, I ignore such class.

The initialize method looks like this:

MyClass >> initialize
	super initialize.
	varA := nil.
	varB := nil.
