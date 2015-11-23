
# Install apache2
sudo apt-get install -y apache2

echo mysql-server mysql-server/root_password password  password  | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password  password  | sudo debconf-set-selections

# Install mysql
sudo apt-get install -y mysql-server-5.5
sudo apt-get install -y mysql-server
sudo apt-get install -y mysql-client

# Update the version of PHP to 5.6
sudo add-apt-repository ppa:ondrej/php5-5.6
sudo apt-get update
sudo apt-get install python-software-properties
sudo apt-get update
sudo apt-get install -y php5 php5-mysql php5-dev php-pear

# Install memcached
sudo apt-get install -y memcached php5-memcache php5-memcached

# Install git
sudo apt-get install -y git

# Install phpunit
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit

# Install composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Restart apache2
sudo /etc/init.d/apache2 restart

echo "DONE"
