# Class: jasig
#
# This module manages jasig.
#
class jasig(
  $service_directory    = $jasig::params::service_directory,
  $ldap_url             = $jasig::params::ldap_url,
  $ldap_useStartTLS     = $jasig::params::ldap_useStartTLS,
  $ldap_useSSL          = $jasig::params::ldap_useSSL,
  $ldap_trustedCert     = $jasig::params::ldap_trustedCert,
  $ldap_rootDn          = $jasig::params::ldap_rootDn,
  $ldap_baseDn          = $jasig::params::ldap_baseDn,
  $ldap_managerDn       = $jasig::params::ldap_managerDn,
  $ldap_managerPassword = $jasig::params::ldap_managerPassword,
  $ldap_domain          = $jasig::params::ldap_domain
) inherits jasig::params {
  validate_string($service_directory)

  file { $service_directory:
    ensure => 'directory'
  }
  ->
  file { '/etc/cas/cas.properties':
    ensure  => 'file',
    replace => true,
    source  => [ "puppet:///modules/jasig/cas.properties" ]
  }

}
