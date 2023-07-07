#!/bin/bash

#update the sytem
sudo apt update
sudo apt upgrade -y

# install nginx
sudo apt install nginx -y

# create webapp directory
sudo mkdir -p /content/webapp

#configure Nginx 
sudo rm /etc/nginx/sites-available/default
sudo bash -c 'cat > /etc/nginx/sites-available/default <<EOT
server{
	listen 80 default_server:
	listen [::]:80 default_server;
	
	root /content/webapp;
	index index.html;
	
	location /{
		try_files \$uri \$uri/ =400;
	}
}
EOT'

#log rotation for nginx
sudo bash -c 'cat > /etc/logrotate.d/nginx <<EOT
/content/webapp/*.log{
	weekly
	rotate 7
	missiongok
	notifyempty
	compress
	delaycomppress
	sharedscripts
	postrotate
		systemctl reload nginx
	endscript
}
EOT'

#restart nginx 
sudo systemctl restart nginx
