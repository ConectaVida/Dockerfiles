# How to use this image

You just need run this command below to see the magic happen:

> docker run --name workbench -d -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix rzani/mysqlworkbench

So, after run the command above once, you need only start the container with:

> docker start workbench