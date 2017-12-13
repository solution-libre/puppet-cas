# cas

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with CAS](#setup)
    * [Beginning with CAS](#beginning-with-cas)
3. [Usage - Configuration options and additional functionality](#usage)
    * [Add a service](#add-a-service)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)
7. [Contributors](#contributors)

## Description

This module configures [CAS](https://wiki.jasig.org/display/CAS/Home).

## Setup

### Beginning with CAS

```puppet
class { 'cas': }
```

## Usage

### Add a service

```puppet
cas::service { 'Jenkins':
  serviceId   => '^https://myserver.+jenkins.+',
  id          => '100',
  enabled     => true,
  sso_enabled => true,
},
```

## Reference

### Classes

#### Public classes

* cas: Main class, includes all other classes.

#### Private classes

* cas::params: Sets parameter defaults per operating system.

#### Parameters

##### `server_name`

Url of the server. Valid option: string. Default value: "http://localhost/"

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

##### `ldap_search_filter`

LDAP search filter. Valid option: string. Default value: undef

### Defines

#### Public Defines

* cas::service: Adds a CAS service.

#### Parameters

The following parameters are available in the `::cas::service` define:

##### `serviceId`

Required Ant pattern or regular expression describing a logical service. A logical service defines one or more URLs where a service or services are located. The definition of the url pattern must be done carefully because it can open security breaches. Valid options: string. Default value: undef

##### `id`

Required unique identifier. Valid option: numeric. Default value: undef

##### `enabled`

Flag to toggle whether the entry is active; a disabled entry produces behavior equivalent to a non-existent entry. Valid option: boolean. Default value: true

##### `sso_enabled`
Set to false to force users to authenticate to the service regardless of protocol flags (e.g. renew=true). This flag provides some support for centralized application of security policy. Valid option: boolean. Default value: true

## Limitations

Debian family OSes are officially supported. Tested and built on Debian.

## Development

[Solution Libre](https://www.solution-libre.fr) modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great.

[Fork this module on GitHub](https://github.com/solution-libre/puppet-cas/fork)

## Contributors

The list of contributors can be found at: https://github.com/solution-libre/puppet-cas/graphs/contributors
