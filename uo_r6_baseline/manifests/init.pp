# Class: uo_r6_baseline
#
# This module manages uo_r6_baseline
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class uo_r6_baseline {
  # Required Packages
  package {'cifs-utils':
    ensure => 'installed',
  }
  
  package {'keyutils':
   ensure => 'installed',
  }
  
  package {'nano':
    ensure => 'installed',
  }
  
  # Required files
  file {'/etc/request-key.d/cifs.spnego.conf':
    ensure => 'file',
    owner => 'root',
    group => 'root',
    mode => '0600',
    source => "puppet:///modules/uo_baseline/cifs.spengo.conf"
  }
  
   file {'/etc/request-key.d/dns_resolver.conf':
    ensure => 'file',
    owner => 'root',
    group => 'root',
    mode => '0600',
    source => "puppet:///modules/uo_baseline/dns.resolver.conf"
  }
}

