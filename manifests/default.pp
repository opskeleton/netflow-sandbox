group{ 'puppet': ensure  => present }

node default {
  include netflow
  include base
}
