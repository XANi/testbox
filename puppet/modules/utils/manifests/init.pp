class utils {
    package { ['strace', 'screen']:
        ensure => installed,
    }

    class net {
        package { ['nmap', 'netcat-openbsd', 'mtr-tiny', 'tcpdump']:
            ensure => installed,
        }
        package { ['netcat-traditional']:
            ensure => purged,
        }
    }
}
