file { '/tmp/i_am_puppeted':
    ensure => exists,
    content => $hostname,
}
