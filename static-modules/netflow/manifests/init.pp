# setting up netflow on openbsd
class netflow {

  include netflow::nfsen

  file_line { 'set state-defaults pflow':
    path => '/etc/pf.conf',
    line => 'set state-defaults pflow'
  }

  file { '/etc/hostname.pflow0':
    ensure=> file,
    mode  => '0644',
    source=> 'puppet:///modules/netflow/hostname.pflow0',
    owner => root,
    group => wheel,
  }

}
