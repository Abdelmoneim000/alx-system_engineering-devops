# Installing a package using pip3
package { 'flask':
  ensure  => '2.1.0',                # Desired state (Installed)
  command => 'pip3 install flask==2.1.0', # the command to use for installing
  unless  => 'pip3 show flask | grep "Version: 2.1.0"'
}
