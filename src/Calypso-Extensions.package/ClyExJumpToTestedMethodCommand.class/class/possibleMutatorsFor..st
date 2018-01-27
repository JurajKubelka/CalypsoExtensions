accessing
possibleMutatorsFor: aString 
	" withDoUsing -> with:do:using: withDo:using: with:doUsing: "
	| mutatorPossitions |
	mutatorPossitions := OrderedCollection new.
	^ Symbol streamContents: [ :aStream | 
		aString withIndexDo: [ :eachChar :index | 
			eachChar isUppercase 
				ifTrue: [ aStream nextPut: $:; nextPut: eachChar asLowercase.
					mutatorPossitions add: index ]
				ifFalse: [ aStream nextPut: eachChar ] ].
			aStream nextPut: $: ].
		"self possibleMutatorsFor: 'withDoUsing' "