# Basic shell settings
class base::shell($user='vagrant'){

  file_line { 'set vi mode':
    path => "/home/${$user}/.profile",
    line => 'set -o vi'
  }
  package{'pkglocatedb':
    ensure  => present
  }
}
