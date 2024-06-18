FROM dorowu/ubuntu-desktop-lxde-vnc:focal

# Install zoom client
RUN wget https://zoom.us/client/latest/zoom_amd64.deb
RUN sudo apt update || true
RUN sudo apt install ./zoom_amd64.deb -y

# Install helper command for debugging
COPY smeeting /usr/local/bin/smeeting
RUN chmod +x /usr/local/bin/smeeting

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

COPY zoomus.conf /zoomus.conf
