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
