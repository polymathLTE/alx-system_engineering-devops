package {'nginx':
  ensure   =>  'installed',
}

exec {'setup_redirect':
  provider =>  shell,
  command  =>  'sudo apt-get -y update ; sudo apt-get -y install nginx ; echo "Hello World!" | sudo tee /var/www/html/index.html ; sudo sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/github.com\/polymathLTE permanent;/" /mnt/c/Users/HP/Desktop/ALX-SE/alx-system_engineering-devops/0x0C-web_server/yoo ; sudo service nginx restart',
}