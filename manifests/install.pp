## install.pp is the install class for globalmapper-license-server. It manages the required files as well as ensures
## the required library is installed

class globalmapper-license-server::install {

  if $::osfamily == 'windows' {

    file {'C:\lmtools\license.lic':
      ensure  => 'present',
      source  => 'puppet:///modules/globalmapper-license-server/license.lic',
      require => Package['globalmapper-license-server-license-manager']
    }

    #install Licensing16.6.13
    package {'globalmapper-license-server-license-manager':
      ensure   => latest,
      provider => chocolatey,
    }
  }
}
