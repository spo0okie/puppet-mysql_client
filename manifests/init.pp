class mysql_client {
	case $::operatingsystem {
		'Debian': {
			package {
				'mysql-client':			ensure => installed;
				'libmysqlclient-dev':	ensure => installed
				
			}
		}
		'CentOS': {
			package {
				'mysql':			ensure => installed;
				'mysql-devel':		ensure => installed
			}
		}
	}
}
