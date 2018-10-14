baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				consCell: spec.
			spec
				package: 'LispReader-Tests' with: [ spec requires: #('ConsCell' 'LispReader') ];
				package: 'LispReader'
					with: [ spec requires: #('ConsCell' 'LispReader-Numbers' 'LispReader-Base') ];
				package: 'LispReader-Base'
					with: [ spec requires: #('ConsCell' 'LispReader-Numbers') ];
				package: 'LispReader-Tests-Numbers' with: [ spec requires: 'LispReader-Numbers' ];
				package: 'LispReader-Tests-Processes'
					with: [ spec requires: 'LispReader-Processes' ];
				package: 'LispReader-Numbers';
				package: 'LispReader-Processes'.
			spec
				group: 'default'
				with: #('LispReader-Processes' 'LispReader-Numbers' 'LispReader').
			spec
				group: 'tests'
				with: #('LispReader-Tests-Processes' 'LispReader-Tests-Numbers' 'LispReader-Tests') ]