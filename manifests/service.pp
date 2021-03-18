#Enable services for globalmapper_license_server licensing 
class globalmapper_license_server::service inherits globalmapper_license_server {

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
      require => Package['globalmapper_license_server-license-manager'],
      enable  => true,
    }
  }
}
