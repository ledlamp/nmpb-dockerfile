FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture i386
RUN apt update
RUN apt upgrade -y
RUN apt install -y --no-install-recommends wget gnupg ca-certificates
RUN wget -O - https://dl.winehq.org/wine-builds/winehq.key | apt-key add -
RUN echo "deb https://dl.winehq.org/wine-builds/ubuntu focal main" > /etc/apt/sources.list.d/wine.list
RUN apt update
RUN apt install -y --no-install-recommends wine-stable lxde tightvncserver xfonts-base gedit gettext-base nginx-core
ADD passwd /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd
ADD ["NMPB v1.2 bin", "/root/Desktop/NMPB"]
ADD proxy /proxy
ADD init.sh /
EXPOSE 5901
CMD ["/bin/bash", "/init.sh"]
VOLUME /root/Desktop/NMPB