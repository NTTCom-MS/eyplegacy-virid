class virid (
							$disable = true,
						) {

	$packages=[ 'python-viri', 'viri', 'viri-release' ]

	if($disable)
	{
		service { 'virid':
			ensure => 'stopped',
			enable => 'false',
		}

		package{ $packages:
			ensure  => 'purged',
			require => Service['virid'],
		}
	}
	else
	{
		fail("are you fucking sure?!?!?!?!?!")
	}
}
