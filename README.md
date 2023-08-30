# cameraAccesss
How to simply access the camera from a Dockerfile

To run 

```
xhost +local:
sudo docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --device=/dev/video0:/dev/video0 my_image
```
after running, one should set 

```
xhost -local:
```
