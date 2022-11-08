#!/bin/bash
sudo yum check-update
sudo yum update
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd
sudo chown -R $USER:$USER /var/www
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>GL-BaseCamp test</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Yuriy Bugaenko</h1>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html
curl 127.0.0.1
