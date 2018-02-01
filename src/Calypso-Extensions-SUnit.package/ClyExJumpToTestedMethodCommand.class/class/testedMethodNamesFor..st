accessing
testedMethodNamesFor: aCompiledMethod 
	"Return collection of possible tested method names, e.g.,
	withDoUsing -> withDoUsing withDoUsing: with:do:using: withDo:using:"
	<return: #Array of: #Symbol>
	| selectors selector |
	selectors := OrderedCollection new.
	selector := aCompiledMethod selector asString allButFirst: 4.
	selector at: 1 put: (selector at: 1) asLowercase.
	selectors add: selector asSymbol.
	selectors add: selector asSymbol asMutator.
	selectors addAll: (self possibleMutatorsFor: selector).
	self halt.
	^ selectors