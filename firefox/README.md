# RUN

## How to use this image


### start firefox instance

> docker run --name firefox -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix rzani/firefox