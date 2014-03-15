# base network settings
class base::networking {

  file_line { '127.0.0.1 nameserver':
    ensure => absent,
    path   => '/etc/resolv.conf',
    line   => 'nameserver 127.0.1.1'
  } ->

  file_line { '8.8.8.8 nameserver':
    path => '/etc/resolv.conf',
    line => 'nameserver 8.8.8.8'
  } -> Package<||>
}
