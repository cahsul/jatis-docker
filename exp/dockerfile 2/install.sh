#! /bin/bash

echo "########### Updating CentOS System ####################"
yum -y install wget


# PHP Version 5.4.45
echo "########### PHP Version 5.4.45 ####################"

wget http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
rpm -Uvh epel-release-6-8.noarch.rpm remi-release-6.rpm

yum -y install yum-utils
# yum -y update
yum-config-manager --enable remi-php54    [Intall PHP 5.4]
yum install -y  php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo


php --version


# Apache 2.2.15
echo "########### Apache 2.2.15 ####################"
yum -y update; yum clean all
yum -y install httpd; yum clean all
echo "Apache HTTPD" >> /var/www/html/index.html