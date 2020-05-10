# ssh-proxy
SSH server for socks proxy

1) install docker
2) add your keys to authorized_keys
3) ./run.sh build
4) ./run.sh up

from local host:
ssh -D 127.0.0.1:11050 -N -p 8833 user@HOST
curl -I --socks5-hostname 127.0.0.1:11050 https://example.com
