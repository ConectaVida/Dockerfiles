#!/bin/bash
set -e

if [ -z ${SERVERNAME} ]; then
	SERVERNAME="dev.cybercook.com.br"
fi

if [ -z ${SERVERALIAS} ]; then
	SERVERALIAS="dev.m.cybercook.com.br"
fi

if [ -z ${DOCROOT} ]; then
	DOCROOT="/var/www/html"
fi

if [ -z ${APPNAME} ]; then
	APPNAME="cybercook"
fi

APACHECONF="/etc/apache2/sites-available/$APPNAME.conf"

if [ -f "$APACHECONF" ]; then
	rm $APACHECONF
fi

cat > "$APACHECONF" <<-EOCONF
	ServerName localhost
	<VirtualHost *:80>
	    ServerName ${SERVERNAME}
	    ServerAlias ${SERVERALIAS}
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

/usr/sbin/a2ensite "$APPNAME" && service apache2 stop

exec "$@"