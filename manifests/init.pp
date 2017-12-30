# Class: cas
#
# This module manages cas.
#
class cas(
  $server_name           = $cas::params::server_name,
  $service_directory     = $cas::params::service_directory,
  $ldap_url              = $cas::params::ldap_url,
  $ldap_use_start_tls    = $cas::params::ldap_use_start_tls,
  $ldap_use_ssl          = $cas::params::ldap_use_ssl,
  $ldap_trusted_cert     = $cas::params::ldap_trusted_cert,
  $ldap_root_dn          = $cas::params::ldap_root_dn,
  $ldap_base_dn          = $cas::params::ldap_base_dn,
  $ldap_manager_dn       = $cas::params::ldap_manager_dn,
  $ldap_manager_password = $cas::params::ldap_manager_password,
  $ldap_domain           = $cas::params::ldap_domain,
  $ldap_search_filter    = $cas::params::ldap_search_filter
) inherits cas::params {
  validate_string($service_directory)

  file { $service_directory:
    ensure => 'directory'
  }
  ->file { '/etc/cas/cas.properties':
    ensure  => 'file',
    replace => true,
    content => template('cas/cas.properties.erb'),
  }
}
