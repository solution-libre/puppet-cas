# == Class: jasig::params
#
# This is a container class with default parameters for jasig classes.
class jasig::params {
  $service_directory = '/etc/cas/services'
  

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

}
