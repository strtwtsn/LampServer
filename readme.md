This cookbook is useful for helping to migrate wordpress sites to a new location.

It is designed to be run on a Ubuntu 12.04 LTS system and will install the following:-

Apache
MySQL
PHP

During the install you will be prompted to type in the name of your site and to choose your mysql root password.

The script will then create a diretory in /var/www for your site as well as create the file below /etc/apache2/sites-available.  It will then enable the site.

Following the completion of the script you will need to copy your sites files to the newly created directory in /var/www/ and import your mysql db, making sure that details of your mysql server are updated as necessary in wp-config.php


***How do I run the script?***


The script is designed to be run using chef-solo.  If you download the install.sh file and execute it, this will install ruby 1.9.2 the chef-solo gem before beginning the install.

