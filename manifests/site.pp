node default {
}
node 'ip-172-31-43-5.ap-southeast-2.compute.internal' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => $fqdn,
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
