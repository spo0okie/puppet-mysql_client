class mysql_client {
	case $::operatingsystem {
		'Debian': {
			package {
				'mariadb-client':			ensure => installed;
				'default-libmysqlclient-dev':	ensure => installed
#				'libmariadb-dev':	ensure => installed
				
			}
		}
		'CentOS': {
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
