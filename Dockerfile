FROM alpine

RUN apk add --no-cache openssh

ARG USER=user

RUN adduser -D $USER && passwd -u $USER
  
ADD sshd_config /etc/ssh/sshd_config
ADD authorized_keys /home/$USER/keys

RUN chown $USER:$USER /home/$USER/keys

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e"]
