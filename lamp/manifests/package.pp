class lamp::package {
 # execute 'apt-get update'
  exec { 'apt-update':                    # exec resource named 'apt-update'
    command => '/usr/bin/apt-get update'  # command this resource will run
  }

  # install apache2 package
  package { 'apache2':
    require => Exec['apt-update'],        # require 'apt-update' before installing
    ensure => installed,
  }

# install mysql-server package
  package { 'mysql-server':
    require => Exec['apt-update'],        # require 'apt-update' before installing
    ensure => installed,
  }

# install php5 package
  package { 'php5':
    require => Exec['apt-update'],        # require 'apt-update' before installing
    ensure => installed,
  }
}
