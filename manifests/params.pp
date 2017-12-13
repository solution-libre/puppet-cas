# == Class: cas::params
#
# This is a container class with default parameters for CAS classes.
class cas::params {
  $server_name          = 'http://localhost'
  $service_directory    = '/etc/cas/services'
  
  ## LDAP properties
  $ldap_url             = undef
  
  $ldap_useStartTLS     = false
  $ldap_useSSL          = false
  $ldap_trustedCert     = false
  
  # Directory root DN
  $ldap_rootDn          = undef

  # Base DN of users to be authenticated
  $ldap_baseDn          = undef

  # LDAP connection timeout in milliseconds
  $ldap_connectTimeout  = '3000'

  # Manager credential DN
  $ldap_managerDn       = undef

  # Manager credential password
  $ldap_managerPassword = undef
  
  ## LDAP Authentication
  $ldap_domain          = undef
  $ldap_search_filter   = undef
}
