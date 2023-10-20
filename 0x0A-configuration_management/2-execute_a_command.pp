# Using exec Source
exec { 'Kill a process':
  command => 'pkill killmenow',  # command to kill the process
  path    => ['/usr/bin', '/usr/sbin', '/bin'], # providing a path set to look for the command
  unless  => 'ps -aux | grep "killmenow" | grep -v grep && false' # check if the process active or not
}
