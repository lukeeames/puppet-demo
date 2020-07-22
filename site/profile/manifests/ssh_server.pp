class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@ip-172-31-43-5.ap-southeast-2.compute.internal':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => '',
  }
}
