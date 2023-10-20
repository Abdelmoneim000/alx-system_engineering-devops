#!/usr/bin/pup
# Installing a package using pip3
package { 'flask':
  ensure   => '2.1.0',                # Desired state (Installed)
  provider => 'pip3' # module manager
}
