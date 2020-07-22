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
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6iADyWw/J/m4Ja1/ssoAxyzIXYcJQbOEydeici88fb/D6+29DM0Ib+4koaLac2RpVVWW7kk39dH5RZUtnxwKP7jmx/wZULIaj/R2lL60O3ay7EaEgOAfUQi4YYHDPK2YhfnjpNawqczeapRncsEl+whinudWsYJZ3VzYhD1x4L6IIhAPpZp3GSnTUWZe3ZtaqRRmna4xHw2ZpG5cTR9YZxxT8EZehwg+NVg44PZAGWktpbqTH5Ps/Jmi7gefFN81S0nDF/GP+oWIPgNkEQXNDiTuG1sAWNK4buKmC0QqSChXKL/AJ1nYIUhgYy6VI83xHmP/oTVqIRGfAZlGPpuzp',
  }
}
