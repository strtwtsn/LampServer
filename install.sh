#!/bin/bash
#apt-get -y update
#apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-dev libyaml-dev git
#cd /usr/local/src
#wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz
#tar -xvzf ruby-1.9.3-p194.tar.gz
#cd ruby-1.9.3-p194/
#./configure --prefix=/usr/local
#make
#make install
#rm /usr/local/src/ruby-1.9.3-p194.tar.gz
#gem install chef ruby-shadow --no-ri --no-rdoc
#git clone https://github.com/strtwtsn/LampServer.git /var/chef
#sudo /usr/local/bin/chef-solo -c /var/chef/config/chefsolo.rb -j /var/chef/roles/lampserver.json
#read -p "Enter new site name:" site
#wget https://github.com/strtwtsn/LampServer/blob/master/files/template /etc/apache2/sites-available/$site
#sed -i "s/site/$site/g" /etc/apache2/sites-available/$site
#mkdir -p /var/www/$site
#a2ensite $site
#wget https://github.com/strtwtsn/LampServer/blob/master/files/default /etc/apache2/sites-available/default
#a2enmod rewrite
#/etc/init.d/apache2 restart
read -p "Enter new mysql root password:" password
mysqladmin -u root password $password
/etc/init.d/apache2 restart
/etc/init.d/mysql restart
