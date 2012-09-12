# Class: php
#
# This module manages php
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#

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
class php (
	$ensure		= installed,
	$cli			= purged,
	$dev			= purged
){

	case $operatingsystem {
		Ubuntu:{
			class {'php::install':
				ensure 	=> $ensure,
				cli 		=> $cli,
				dev			=> $dev,
		}
		default:{
			warning("The php module does not support ${operatingsystem} on ${fqdn}.")
		}
	}

}
