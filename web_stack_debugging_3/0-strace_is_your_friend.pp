# Fixes misspelled .phpp extension to .php in WordPress settings
exec { 'fix-wordpress':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin'],
  onlyif  => 'grep -q "phpp" /var/www/html/wp-settings.php',
}
