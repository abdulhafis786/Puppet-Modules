class lamp::service {
# ensure apache2 service is running
  service { 'apache2':
    ensure => running,
  }

# ensure mysql service is running
  service { 'mysql':
    ensure => running,
  }
}
