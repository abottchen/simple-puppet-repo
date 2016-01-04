class system::hosts {

  resources { 'host':
    purge => true,
  }

  host { 'localhost':
    ensure => 'present',
    ip     => '127.0.0.1',
    target => '/etc/hosts',
  }
  host { 'pe-201523-agent.puppetdebug.vlan':
    ensure       => 'present',
    host_aliases => ['pe-201523-agent'],
    ip           => '10.20.1.21',
    target       => '/etc/hosts',
  }
  host { 'pe-201523-master.puppetdebug.vlan':
    ensure       => 'present',
    host_aliases => ['pe-201523-master'],
    ip           => '10.20.1.22',
    target       => '/etc/hosts',
  }
}
