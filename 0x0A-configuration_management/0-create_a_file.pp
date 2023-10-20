# define the source file
file { 'creating a new file':
  ensure  => present,                # Desired state (file exists)
  path    => '/home/abod/school',            # Path to the
  owner   => 'www-data',              # Owner of the file
  group   => 'www-data',              # Group of the file
  mode    => '0744',              # Permissions (octal)
  content => 'I love Puppet', # Content of the file
}
