#!/bin/bash
set -e

APACHECONF="/etc/apache2/sites-available/$APPNAME.conf"

cat > "$APACHECONF" <<-EOCONF
	<VirtualHost *:80>
	    ServerName ${HOST_DESKTOP}
	    ServerAlias ${HOST_MOBILE}
	    AddDefaultCharset UTF-8
	    DocumentRoot '${DOCROOT}'
	     <Directory '${DOCROOT}'>
	        Options Indexes FollowSymLinks MultiViews
	        AllowOverride All
	    </Directory>
	    ErrorLog '/var/log/apache2/${APPNAME}_error.log'
	    ServerSignature Off
	    CustomLog '/var/log/apache2/${APPNAME}_access.log' combined
	    ScriptAlias /cgi-bin/ '/usr/lib/cgi-bin'
	</VirtualHost>
EOCONF

service apache2 restart

exec "$@"