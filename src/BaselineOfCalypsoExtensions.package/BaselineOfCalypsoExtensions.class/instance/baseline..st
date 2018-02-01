baselines
baseline: spec
	<baseline>
	
	spec for: #'common' do: [ 
		spec 
			baseline: 'Calypso' with: [ 
				spec
					repository: 'github://dionisiydk/Calypso';
					loads: #default ];
			package: #'Calypso-Extensions-Core' with: [ 
				spec requires: #( 'Calypso' ) ];
			package: #'Calypso-Extensions-AddMethod' with: [ 
				spec requires: #( 'Calypso' #'Calypso-Extensions-Core' ) ];
			package: #'Calypso-Extensions-ClassReference' with: [ 
				spec requires: #( 'Calypso' #'Calypso-Extensions-Core' ) ];
			package: #'Calypso-Extensions-SUnit' with: [ 
				spec requires: #( 'Calypso' ) ];
			group: #'default' with: #( 
				#'Calypso-Extensions-Core' 
				#'Calypso-Extensions' 
				#'Calypso-Extensions-SUnit'
				#'Calypso-Extensions-ClassReference' )
	 ]