# Class: jasig
#
# This module manages jasig.
#
class jasig(
  $server_name          = $jasig::params::server_name,
  $service_directory    = $jasig::params::service_directory,
  $ldap_url             = $jasig::params::ldap_url,
  $ldap_useStartTLS     = $jasig::params::ldap_useStartTLS,
  $ldap_useSSL          = $jasig::params::ldap_useSSL,
  $ldap_trustedCert     = $jasig::params::ldap_trustedCert,
  $ldap_rootDn          = $jasig::params::ldap_rootDn,
  $ldap_baseDn          = $jasig::params::ldap_baseDn,
  $ldap_managerDn       = $jasig::params::ldap_managerDn,
  $ldap_managerPassword = $jasig::params::ldap_managerPassword,
  $ldap_domain          = $jasig::params::ldap_domain,
  $ldap_search_filter   = $jasig::params::ldap_search_filter
) inherits jasig::params {
  validate_string($service_directory)

  file { $service_directory:
    ensure => 'directory'
  }
  ->
  file { '/etc/cas/cas.properties':
    ensure  => 'file',
    replace => true,
    content => template('jasig/cas.properties.erb'),    
  }

}
