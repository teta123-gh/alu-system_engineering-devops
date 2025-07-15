# Puppet manifest to configure SSH client for key-based authentication
# This manifest configures the SSH client to use a specific private key
# and disables password authentication

file_line { 'Declare identity file':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
  ensure => present,
}

file_line { 'Turn off passwd auth':
  path => '/etc/ssh/ssh_config',
  line => '    PasswordAuthentication no',
  ensure => present,
}
