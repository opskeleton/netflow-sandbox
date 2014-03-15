# nfsen setup
class netflow::nfsen {

  file{['/var/www/var', '/var/www/var/tmp']:
    ensure => directory,
    mode   => 'a+rw'
  }

  package{['nfsen', 'nfdump']:
    ensure  => present
  } ->

  editfile::config { 'nfsen commsocket':
    ensure => '"/var/www/var/tmp/nfsen.comm";',
    path   => '/etc/nfsen.conf',
    quote  => false,
    sep    => '=',
    entry  => '$COMMSOCKET',
    notify => [Exec['restart nfsen'], Exec['nfsen-configure']]
  }

  exec{'nfsen-configure':
    command      => 'install-nfsen.pl /etc/nfsen.conf',
    user         => 'root',
    path         => '/usr/local/bin',
    refreshonly  =>  true
  }

  file { '/var/www/htdocs/nfsen/conf.php':
    ensure  => file,
    mode    => '0644',
    source  => 'puppet:///modules/netflow/conf.php',
    owner   => root,
    group   => wheel,
    require => Package['nfsen']
  } ~> Exec['restart apache']

  file{'/var/www/conf/modules/php.conf':
    ensure  => link,
    target  => '/var/www/conf/modules.sample/php-5.3.conf',
    require => Package['nfsen']
  } ~> Exec['restart apache']

  exec{'restart apache':
    command      => 'apachectl stop && apachectl start',
    user         => 'root',
    path         => '/usr/sbin',
    refreshonly  => true
  }

  exec{'restart nfsen':
    command     => '/usr/local/bin/nfsen stop && /usr/local/bin/nfsen start',
    user        => 'root',
    refreshonly => true,
    require     => Exec['nfsen-configure']
  }

}
