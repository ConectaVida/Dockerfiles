# CyberCook

##Basic usage

```shell
docker run --name something -d -p 80:80 -v /home/html:/var/www/html rzani/cybercook
```
And now change your */etc/hosts* adding **127.0.0.1 dev.cybercook.com.br**


##Using other hostname

You can use ENV params to change apache config. The line below run a container with other hostname

```shell
docker run --name cybercook -d -p 80:80 -e "DOCROOT=/var/www/html/cybercook" -v /home/rodrigo/html:/var/www/html rzani/cybercook
```

### ENV 

- SERVERNAME -  Change the ServerName of apache conf
- SERVERALIAS - Change the ServerAlias of apache conf
- DOCROOT - DocumentRoot of apache conf
- APPNAME - Use to create some log's name and the apache's conf name



