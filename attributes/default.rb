default[:php_fpm][:pid_file]        =   "/var/run/php5-fpm.pid"

default[:php_fpm][:socket]          =   "/var/run/php5-fpm.sock"
default[:php_fpm][:port]            =   9000

default[:php_fpm][:listen_to]       =   'socket'

default[:php_fpm][:user]            =   "www-data"
default[:php_fpm][:group]           =   "www-data"
default[:php_fpm][:mode]            =   "0666"


