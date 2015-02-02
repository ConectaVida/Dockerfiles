# How to use this image

You just need run this command below to see the magic happen:

> docker run --name firefox -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix rzani/firefox

So, after run the command above once, you need only start the container with:

> docker start firefox