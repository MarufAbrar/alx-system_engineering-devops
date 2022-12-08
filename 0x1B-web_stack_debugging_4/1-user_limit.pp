# Makes is possible to login with 'holberton' user and open a file without error message

exec {'update hard limit':
  command  => 'sudo sed -i "/holberton hard/s/5/4000/" /etc/security/limits.conf',
  provider => shell
}

exec {'update soft limit':
  command  => 'sudo sed -i "/holberton hard/s/4/4000/" /etc/security/limits.conf',
  provider => shell
}
