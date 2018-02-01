accessing
testedClassFromClassName
	| className |
	(targetClass name endsWith: #Test) 
		ifTrue: [ className := targetClass name allButLast: 4 ]
		ifFalse: [ (targetClass name endsWith: #Tests) 
			ifTrue: [ className := targetClass name allButLast: 5 ] ].
	className ifNil: [ ^ targetClass ].
	^ targetClass environment 
			at: className asSymbol 
			ifPresent: [ :aClass | aClass ]
			ifAbsent: [ targetClass ]