accessing
testedClassFrom: aCompiledMethod 
	<return: #Class or: nil>
	aCompiledMethod ast nodesDo: [ :eachNode | 
		(eachNode isReturn and: [ eachNode value isGlobal and: [ 
				eachNode value binding isGlobalClassNameBinding ] ])
					ifTrue: [ ^ eachNode value binding value ] ].
	^ nil