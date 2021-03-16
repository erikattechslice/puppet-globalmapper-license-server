## install.pp is the install class for globalmapper-license-server. It manages the required files as well as ensures
## the required library is installed

class globalmapper-license-server::install {

  if $::osfamily == 'windows' {

    file {'C:\ProgramData\Intergraph\Licensing\ActivationIds.xml':
      ensure  => 'present',
      source  => 'puppet:///modules/globalmapper-license-server/ActivationIds.xml',
      require => Package['globalmapper-license-server-license-manager']
    }

      # Install .net Full Profile needed Licensing16.6.13
    package {'net-framework-full-profile':
      ensure   => latest,
      provider => chocolatey,
    }

    #install Licensing16.6.13
    package {'globalmapper-license-server-license-manager':
      ensure   => latest,
      provider => chocolatey,
      require  => Package['net-framework-full-profile']
    }
  }
}
