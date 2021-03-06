class review (String $user = 'review') {
  file {'/etc/shells':
    ensure => file,
    source => 'puppet:///modules/review/shells',
  }

  file {'/etc/motd':
    ensure => file,
    content => template('review/motd.erb'),
  }

  user {$user:
    ensure => present,
    shell => '/bin/csh',
  }
}
