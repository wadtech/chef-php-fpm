default[:php_fpm][:pid_file]                            =   "/var/run/php5-fpm.pid"

default[:php_fpm][:socket]                              =   "/dev/shm/php5-fpm.sock"
default[:php_fpm][:listen_address]                      =   '127.0.0.1'
default[:php_fpm][:port]                                =   9000

default[:php_fpm][:listen_to]                           =   'socket'

default[:php_fpm][:user]                                =   "www-data"
default[:php_fpm][:group]                               =   "www-data"
default[:php_fpm][:mode]                                =   "0666"

default[:php_fpm][:pool_name]                           =   'www'

#PHP FPM php.ini settings
default[:php_fpm][:php_ini][:directives]                =   {}
default[:php_fpm][:php_ini][:memory_limit]              =   '128M'
default[:php_fpm][:php_ini][:max_execution_time]        =   30
default[:php_fpm][:php_ini][:upload_max_filesize]       =   '2M'
default[:php_fpm][:php_ini][:post_max_size]             =   '8M'
default[:php_fpm][:php_ini][:realpath_cache_size]       =   nil
default[:php_fpm][:php_ini][:realpath_cache_ttl]        =   nil

#Tunable settings in www.conf
#Nil means default php-fpm settings will be used
default[:php_fpm][:tunable][:listen_backlog]            =   nil
default[:php_fpm][:tunable][:allowed_clients]           =   nil
default[:php_fpm][:tunable][:process_manager_mode]      =   'dynamic'

default[:php_fpm][:tunable][:max_children]              =   8
default[:php_fpm][:tunable][:start_servers]             =   4
default[:php_fpm][:tunable][:min_spare_servers]         =   2
default[:php_fpm][:tunable][:max_spare_servers]         =   4

default[:php_fpm][:tunable][:process_idle_timeout]      =   nil
default[:php_fpm][:tunable][:max_requests]              =   nil

default[:php_fpm][:tunable][:status_path]               =   nil
default[:php_fpm][:tunable][:ping_path]                 =   nil
default[:php_fpm][:tunable][:ping_response]             =   nil

default[:php_fpm][:tunable][:access_log]                =   nil
default[:php_fpm][:tunable][:access_log_format]         =   nil
default[:php_fpm][:tunable][:slow_log]                  =   nil

default[:php_fpm][:tunable][:request_slow_log_timeout]  =   nil
default[:php_fpm][:tunable][:request_terminate_timeout] =   nil

default[:php_fpm][:tunable][:rlimit_files]              =   nil
default[:php_fpm][:tunable][:rlimit_core]               =   nil

default[:php_fpm][:tunable][:chroot]                    =   nil
default[:php_fpm][:tunable][:chdir]                     =   '/'

default[:php_fpm][:tunable][:catch_workers_output]      =   nil
default[:php_fpm][:tunable][:limit_extensions]          =   nil

default[:php_fpm][:tunable][:env_variables]             =   nil #If using this variable, a Hash is expected with values in the format of env variable => variable value.
default[:php_fpm][:tunable][:limit_extensions]          =   nil

# Install extra packages with this array!
default[:php_fpm][:packages]                            =   []
