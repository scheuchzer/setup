package { ['vim', 'aptitude', 'dkms', 'cryptkeeper', 'sshfs', 'encfs']:
	ensure => present
}

package { ['virtualbox', 'vagrant']:
	ensure => present
}

package { ['git', 'subversion', 'mercurial', 'maven']:
	ensure => present
}

package { ['geeqie', 'gimp', 'imagemagick', 'graphviz']:
	ensure => present
}

package { ['r-cran-rcmdr']:
	ensure => present
}

package { ['ruby-full', 'rubygems-integration', 'git-core']:
	ensure => present
}


exec { 'rhc-install':
	command      => '/usr/bin/gem install rhc',
	#path        => '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
	#refreshonly => true,
	require => Package['git-core']
}