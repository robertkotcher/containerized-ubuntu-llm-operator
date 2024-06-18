FROM dorowu/ubuntu-desktop-lxde-vnc:focal

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh
