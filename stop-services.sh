echo -e "Stoping all webservices..."
echo -e "Check apache service..."
# Apache 2
apache_status="$(systemctl is-active apache2.service)"
if [ $apache_status = "active" ]; then
    echo -e "Apache 2 service status: $apache_status. Stopping apache service..."
    sudo service apache2 stop
    if [ "$(systemctl is-active apache2.service)" != "active" ]; then
	echo -e "Apache 2 service stopped."
    else
	echo -e "Apache 2 service status: $(systemctl is-active apache2.service)"
    fi
else
    echo -e "Apache 2 service is not running."
fi
echo -e "Check Nginx service..."
nginx_status="$(systemctl is-active nginx.service)"
if [ $nginx_status = "active" ]; then
    echo -e "Stopping nginx service..."
    sudo service nginx stop
    if [ "$(systemctl is-active nginx.service)" != "active" ]; then
	echo -e "Nginx service stopped."
    else
	echo -e "Nginx service status: $(systemctl is-active nginx.service)"
    fi
else
    echo -e "Nginx service is not running."
fi
echo -e "Check MariaDb service..."
mariadb_status="$(systemctl is-active mariadb.service)"
if [ $mariadb_status = "active" ]; then
    echo -e "Stopping MariaDb service..."
    sudo service mariadb stop
    if [ "$()" != "active" ]; then
	echo -e "MariaDb service stopped."
    else
	echo -e "MariaDb service status: $(systemctl is-active mariadb.service)"
    fi
else
    echo -e "MariaDb service is not running."
fi
