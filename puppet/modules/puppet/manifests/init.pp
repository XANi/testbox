class puppet {
    #source => "$base::modules/puppet/files/emacslibs",
    $puppet_repo_path = '/var/lib/dppd/repo'
    file { puppet-conf:
        path => '/etc/puppet/puppet.conf',
        content => template('puppet/puppet.conf.erb'),
        owner => root,
        group => root,
    }
}
