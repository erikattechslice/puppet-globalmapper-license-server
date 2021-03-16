# Class: globalmapper-license-server
# ===========================
#
# globalmapper-license-server is a module that installs the globalmapper-license-server library, and launches 
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
# class { "globalmapper-license-server":
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

class globalmapper-license-server (


) inherits globalmapper-license-server::params {

  class { '::globalmapper-license-server::install': }
  -> class { '::globalmapper-license-server::service': }

  contain '::globalmapper-license-server::install'
  contain '::globalmapper-license-server::service'

}
