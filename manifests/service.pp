#Enable services for globalmapper-license-server licensing 
class globalmapper-license-server::service inherits globalmapper-license-server {

if $::osfamily =='windows' {

    windows_env {'LM_LICENSE_FILE':
      ensure => present,
      value  =>'c:\Users\Public\Intergraph\Licenses\Server\License.Lic',
    }

    windows_env {'VENDOR_LICENSE_FILE':
      ensure => present,
      value  =>'c:\Users\Public\Intergraph\Licenses\Server\License.Lic',
    }

    service {'lmgrd':
      ensure  => 'running',
      require => Package['globalmapper-license-server-license-manager'],
      enable  => true,
    }
    service {'FlexNet Licensing Service':
      ensure  => 'running',
      require => Package['globalmapper-license-server-license-manager'],
      enable  => true,
    }
  }
}
