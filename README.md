# puppet-jasig

Manage Jasig via puppet.

## Usage

```puppet
    class { 'jasig': }
```

### Add a service

Adding a service:

```puppet
jasig::service { 'Jenkins':
    serviceId    => '^https://myserver.+jenkins.+',
    name         => 'jenkins.json',
    id           => '100',
    $enabled     => true,
    $sso_enabled => true,
  },

```

## Reference

### Classes

#### Public classes

* jasig: main class.

#### Private classes

* jasig::params: Sets parameter defaults per operating system.

#### Parameters

##### `service_directory`

Directory where the services are configured. Valid option: string. Default value: "/etc/cas/services"

##### `ldap_url`

URL of the LDAP server. Valid option: string. Default value: undef

##### `ldap_useStartTLS`

Whether TLS is used. Valid option: boolean. Default value: false

##### `ldap_useSSL`

Whether SSL is used. Valid option: boolean. Default value: false

##### `ldap_trustedCert`

Whether trusted certificate is used. Valid option: boolean. Default value: false

##### `ldap_rootDn`

LDAP root DN. Valid option: string. Default value: undef

##### `ldap_baseDn`

LDAP base DN. Valid option: string. Default value: undef

##### `ldap_managerDn` 

LDAP manager DN. Valid option: string. Default value: undef

##### `ldap_managerPassword` 

LDAP manager password. Valid option: string. Default value: undef

##### `ldap_domain`

LDAP domain. Valid option: string. Default value: undef

### Defines

#### Public Defines

 *jasig::service: Adds a Jasig service.

#### Parameters

The following parameters are available in the `::jasig::service` define:

##### `serviceId`

Required Ant pattern or regular expression describing a logical service. A logical service defines one or more URLs where a service or services are located. The definition of the url pattern must be done carefully because it can open security breaches. Valid options: string. Default value: undef

##### `name`

Required name (255 characters or less). Must include valid characters allowed by the file system. Valid option: string. Default value: undef

##### `id`

Required unique identifier. Valid option: numeric. Default value: undef

##### `enabled`

Flag to toggle whether the entry is active; a disabled entry produces behavior equivalent to a non-existent entry. Valid option: boolean. Default value: true

##### `sso_enabled`
Set to false to force users to authenticate to the service regardless of protocol flags (e.g. renew=true). This flag provides some support for centralized application of security policy. Valid option: boolean. Default value: true

##Development

[Echoes Technologies](https://www.echoes.fr) modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great.

[Fork this module on GitHub](https://github.com/echoes-tech/puppet-jasig/fork)

## Contributors

The list of contributors can be found at: https://github.com/echoes-tech/puppet-jasig/graphs/contributors

