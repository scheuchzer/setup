package { ['vim', 'aptitude', 'dkms', 'cryptkeeper', 'sshfs', 'encfs']:
	ensure => present
}

package { ['virtualbox', 'vagrant']:
	ensure => present
}

package { ['git', 'subversion', 'mercurial', 'maven']:
	ensure => present
}

package { ['geeqie', 'gimp', 'imagemagick', 'graphviz', 'pdftk','tmux', 'inkscape']:
	ensure => present
}

package { ['r-cran-rcmdr']:
	ensure => present
}

package { ['ruby-full', 'rubygems-integration', 'git-core','libs3-2']:
	ensure => present
}


exec { 'rhc-install':
	command      => '/usr/bin/gem install rhc',
	#path        => '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
	#refreshonly => true,
	require => Package['git-core']
}

# S3FS https://github.com/s3fs-fuse/s3fs-fuse/wiki/Installation-Notes
#package {['build-essential','libfuse-dev','libcurl4-openssl-dev','libxml2-dev','mime-support','automake','libtool']:
#	ensure => present
#}

package { ['s3ql']:
	ensure => absent
}
