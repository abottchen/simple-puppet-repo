class system::hashadmins { 
  require mysql::server

  $dbuser_list = { 
    'zack@localhost'   => {  },
    'monica@localhost' => {  },
    'luke@localhost'   => {  },
    'brad@localhost'   => { password_hash  => mysql_password('puppet'), },
    'ralph@localhost'  =>  { ensure => absent },
  }

  $dbuser_defaults = {
    ensure        => present,
    password_hash => mysql_password('puppetlabs'),
  }

  create_resources('mysql_user',$dbuser_list,$dbuser_defaults)
}
