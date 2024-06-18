# Meeting bot

This container implements an AI bot that can log into different meeting apps, join meetings, and record and upload audio to a cloud bucket

# How to build

`docker build -t <repo>/meeting-bot .`

# How to run

`docker run -p 6080:80 -p 5900:5900 -v /dev/shm:/dev/shm <image>`

# Notes

* What is /dev/shm?
