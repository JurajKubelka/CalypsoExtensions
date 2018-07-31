baselines
baseline: spec
	<baseline>
	
	spec for: #'common' do: [ 
		spec 
			baseline: 'CalypsoExtensions' with: [ 
				spec repository: 'github://JurajKubelka/CalypsoExtensions/src' ];
			baseline: 'GToolkitExamplesCalypso' with: [ spec 
				repository: 'github://feenkcom/gtoolkit-examples/src';
				loads: 'CalypsoExtensions' ]
	 ]