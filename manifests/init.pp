# Class: cas
#
# This module manages cas.
#
class cas(
  $server_name          = $cas::params::server_name,
  $service_directory    = $cas::params::service_directory,
  $ldap_url             = $cas::params::ldap_url,
  $ldap_useStartTLS     = $cas::params::ldap_useStartTLS,
  $ldap_useSSL          = $cas::params::ldap_useSSL,
  $ldap_trustedCert     = $cas::params::ldap_trustedCert,
  $ldap_rootDn          = $cas::params::ldap_rootDn,
  $ldap_baseDn          = $cas::params::ldap_baseDn,
  $ldap_managerDn       = $cas::params::ldap_managerDn,
  $ldap_managerPassword = $cas::params::ldap_managerPassword,
  $ldap_domain          = $cas::params::ldap_domain,
  $ldap_search_filter   = $cas::params::ldap_search_filter
) inherits cas::params {
  validate_string($service_directory)

  file { $service_directory:
    ensure => 'directory'
  }
  ->
  file { '/etc/cas/cas.properties':
    ensure  => 'file',
    replace => true,
    content => template('cas/cas.properties.erb'),
  }
}
