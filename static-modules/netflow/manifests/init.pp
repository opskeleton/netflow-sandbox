# setting up netflow on openbsd
class netflow {
  package{'nfsen':
    ensure  => present
  }
}
