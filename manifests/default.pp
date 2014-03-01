group{ 'puppet': ensure  => present }

node default {

  package{'nfsen':
    ensure  => present
  }
}
