FROM registry.fedoraproject.org/fedora-minimal:43

RUN dnf5 update -y
RUN dnf5 install rsync -y

RUN dnf5 clean all
RUN rm -rf /var/cache/{dnf,yum}

ENTRYPOINT [ "rsync", "--no-detach", "--daemon" ]
