baselines
baseline: spec
	<baseline>
	
	spec for: #'common' do: [ 
		spec 
			package: #'Calypso-Extensions-Core';
			package: #'Calypso-Extensions-AddMethod' with: [ 
				spec requires: #( #'Calypso-Extensions-Core' ) ]
	 ].

	spec for: #'pharo6.x' do: [ 
		spec 
			baseline: 'Calypso' with: [ 
				spec repository: 'github://pharo-ide/Calypso' ];
			package: #'Calypso-Extensions-Core' with: [ 
				spec requires: #( 'Calypso' ) ]
	 ]