# Increases maximum open files limit in nginx configuration

exec {'increase_limit':
  command  => 'sudo sed -i "s/15/4096/" /etc/default/nginx',
  provider => shell
}

exec {'restart nginx':
  command  => 'sudo service nginx restart',
  provider => shell
}
