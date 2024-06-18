![meeting bot](https://raw.githubusercontent.com/robertkotcher/containerized-ubuntu-llm-operator/master/screenshot.png)

# Meeting bot

This container implements an AI bot that can log into different meeting apps, join meetings, and record and upload audio to a cloud bucket

It runs ubuntu under the hood, and buffers virtual screen via virtual display server (Xvfb) and a VNC server (x11vnc). Vue and nginx translate to format that can be read in via browser. These components are from [here](https://github.com/fcwu/docker-ubuntu-vnc-desktop/blob/develop/Dockerfile.arm64).

# How to build

`docker build -t <repo>/meeting-bot .`

# How to run

`docker run -p 6080:80 -p 5900:5900 -v /dev/shm:/dev/shm <image>`

# Notes

* What is /dev/shm?
