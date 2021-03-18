# Class: globalmapper_license_server
# ===========================
#
# globalmapper_license_server is a module that installs the globalmapper_license_server library, and launches 
# from the library using parameters passed to the node.
#
# Parameters
# ----------
# * `erd_ip`
# This parameter is the IP address of the target server. It defaults to "10.0.0.100"
# It is required for the examples to execute properly.
#
# * `erd_username`
# This parameter is the erd username for the target server. It defaults to "username"
# It is required for the examples to execute properly.
#
# * `erd_password`
# This parameter is the erd password for the target server. It defaults to "password"
# It is required for the examples to execute properly.
#
# Examples
# --------
#
# @example
# class { "globalmapper_license_server":
#   erd_ip       => '10.0.0.100',
#   erd_username => 'admin',
#   erd_password => 'password',
# }

#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
#

class globalmapper_license_server (


){

  class { '::globalmapper_license_server::install': }
  -> class { '::globalmapper_license_server::service': }

  contain '::globalmapper_license_server::install'
  contain '::globalmapper_license_server::service'

}
