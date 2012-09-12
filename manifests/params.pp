# Class: php::params
#
# This module holds variables and other parameters for the php module
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
#     Foobar is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

# [Remember: No empty lines between comments and class definition]
class php::params(){

	case $operatingsystem{
		Ubuntu:{
			$package 			= 'php5'
			$cli_package	= 'php5-cli'
			$dev_package	= 'php5-dev'
		}
	}

}