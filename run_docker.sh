#!/bin/bash
export USER=intflow

xhost local:root

sudo docker run -dit --name FastMOT \
--runtime nvidia \
--net=host \
--privileged \
--ipc=host \
--device /dev/snd \
-w /home/intflow/works/FastMOT \
--mount type=bind,src=/home/intflow/works,dst=/home/intflow/works \
-v /tmp/.X11-unix:/tmp/.X11-unix \
intflow/deepstream:FastMOT
