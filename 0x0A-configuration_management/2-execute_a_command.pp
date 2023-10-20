# Using exec Source
exec { 'Kill a process':
  command => '/usr/bin/pkill killmenow',  # command to kill the process
  unless  => '/usr/bin/ps -aux | grep "killmenow" | grep -v grep && false' # check if the process active or not
}
