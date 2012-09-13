# Class: php::install
#
# This module installs php
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# This module should not be called directly, use;
# include php

# This file is part of the php Puppet module.
#
#     php Puppet module is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     This php Puppet module is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with this php Puppet module.  If not, see <http://www.gnu.org/licenses/>.

# [Remember: No empty lines between comments and class definition]
class php::install(
	$ensure,
	$cli,
	$dev
){

	include php::params

	package{$php::params::package:
		ensure	=> $ensure
	}

	package{$php::params::cli_package:
		ensure	=> $cli,
		require => Package[$php::params::cli_package],
	}

	package{$php::params::dev_package:
		ensure	=> $dev,
		require => Package[$php::params::cli_package],
	}

}