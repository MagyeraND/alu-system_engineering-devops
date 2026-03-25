# Increases the ULIMIT for Nginx to handle high concurrency
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx && service nginx restart',
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
}
