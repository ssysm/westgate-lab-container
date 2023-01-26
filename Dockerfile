FROM centos:centos7.9.2009
# Install build tools
RUN yum groupinstall -y "Development Tools"

RUN yum install -y git

RUN git config --global user.name "Emu Westgate Container"
# RUN git config --global user.email "example@example.com"

RUN ssh-keygen -t rsa -b 4096 -C Container -N '' -f ~/.ssh/id_rsa 

VOLUME /root/code

CMD ["/bin/bash"]