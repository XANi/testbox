class dpkg {
    file { '/etc/apt/sources.list':
        content => template('dpkg/sources.list.erb'),
        mode => 644,
        owner => root,
    }
}
