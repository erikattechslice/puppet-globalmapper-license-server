## install.pp is the install class for globalmapper_license_server. It manages the required files as well as ensures
## the required library is installed

class globalmapper_license_server::install {

  if $::osfamily == 'windows' {

    file {'C:\lmtools\license.lic':
      ensure  => 'present',
      source  => 'puppet:///modules/globalmapper_license_server/license.lic',
      require => Package['globalmapper_license_server-license-manager']
    }

    #install Licensing16.6.13
    package {'globalmapper_license_server-license-manager':
      ensure   => latest,
      provider => chocolatey,
    }
  }
}
