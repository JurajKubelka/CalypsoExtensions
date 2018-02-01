accessing
testMethodNameFor: aCompiledMethod
	"Return a test method name derived from the tested method, e.g., 
		with:do: -> testWithDo"
	<return: #Symbol>
	^ Symbol streamContents: [ :aStream | | capitalize |
		capitalize := true.
		aStream nextPutAll: 'test'.
		aCompiledMethod selector do: [ :eachChar | 
			eachChar = $: 
				ifTrue: [ capitalize := true ]
				ifFalse: [ capitalize 
					ifTrue: [ 
						capitalize := false.
						aStream nextPut: eachChar asUppercase ]
					ifFalse: [ aStream nextPut: eachChar ] ] ] ]