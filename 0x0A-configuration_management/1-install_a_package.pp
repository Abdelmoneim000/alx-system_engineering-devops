# Installing a package using pip3
package { 'installing flask':
  ensure  => installed,                # Desired state (Installed)
  name    => 'flask',                # the name of the package to be installed
  command => 'pip3 install flask==2.1.0', # the command to use for installing
  unless  => 'pip3 show flask | grep "Version: 1.2.3"'
}
