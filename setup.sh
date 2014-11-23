echo "cgi.fix_pathinfo=0" >> /etc/php5/fpm/php.ini
cp joomla /etc/nginx/sites-available/default
cp joomla /etc/nginx/sites-enabled/default
chown -R www-data:www-data /var/www/joomla
