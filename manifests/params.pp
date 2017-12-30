# == Class: cas::params
#
# This is a container class with default parameters for CAS classes.
class cas::params {
  $server_name           = 'http://localhost'
  $service_directory     = '/etc/cas/services'

  ## LDAP properties
  $ldap_url              = undef

  $ldap_use_start_tls    = false
  $ldap_use_ssl          = false
  $ldap_trusted_cert     = false

  # Directory root DN
  $ldap_root_dn          = undef

  # Base DN of users to be authenticated
  $ldap_base_dn          = undef

  # LDAP connection timeout in milliseconds
  $ldap_connect_timeout  = '3000'

  # Manager credential DN
  $ldap_manager_dn       = undef

  # Manager credential password
  $ldap_manager_password = undef

  ## LDAP Authentication
  $ldap_domain           = undef
  $ldap_search_filter    = undef
}
