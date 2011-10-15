$repo = '/var/lib/dppd/repo/puppet'

$location = 'default'

$modules = "$repo/modules"
$puppet_header = "DPP/Puppet managed file at location $location, DO NOT EDIT BY HAND, changes will be overwritten."

node default {
    include puppet
    include dpkg
    file { "/tmp/i_am_puppet":
        content => "DPP: puppet ver $puppetversion on $hostname; facter ver $facterversion",
    }
#    include utils
#    include utils::net
}

