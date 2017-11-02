baselines
baseline: spec
	<baseline>
	
	spec for: #'common' do: [ 
		spec 
			baseline: 'Calypso' with: [ 
				spec
					repository: 'github://dionisiydk/Calypso';
					loads: #default ];
			package: #'Calypso-Extensions' with: [ 
				spec requires: #( 'Calypso' ) ];
			group: #'default' with: #( #'Calypso-Extensions' )
	 ]