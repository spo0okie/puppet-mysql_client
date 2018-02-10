class mysql_client {
	case $::operatingsystem {
		Debian: {
			package {
				'mysql-client':			ensure => installed;
				'libmysqlclient-dev':	ensure => installed
				
			}
		}
		CentOS: {
			case $::operatingsystemmajorversion {
				6: {
					package {
						'mysql':			ensure => installed;
						'mysql-devel':		ensure => installed;
					}
				}
				7: {
					package {
						'mysql':			ensure => installed;
					#	'mysql-devel':		ensure => installed;
					}
				}
			}
		}
	}
}
