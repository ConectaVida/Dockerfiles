# How to use this image

You just need run this command below to see the magic happen:

> docker run --name workbench -d -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix rzani/mysqlworkbench

## Linking containers

If you use MariaDB or MySQL with docker too and need access them. Use link:

> docker run --name workbench -d -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --link <container_name>:<alias_name> rzani/mysqlworkbench

When creating a new connection, rather than using 'localhost', use the <alias_name> passed in the link param.

## Running again 

So, after run the command above once, you need only start the container with:

> docker start workbench