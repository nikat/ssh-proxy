# ssh-proxy is Dockerized SSH server for SOCKS5 proxy

## at client.example.com

1. Install Docker

1. Clone

    git clone https://github.com/nikat/ssh-proxy-client.git
    cd ssh-proxy-client
    cp ssh_config.sample ssh_config
  
1. Set server hostname in ssh_config

    Hostname server.example.com

1. Create the keys

    ssh-keygen -b 2048 -t rsa -f ./id_rsa -q -N ""
  
## at server.example.com

1. Install Docker

1. Clone

    git clone https://github.com/nikat/ssh-proxy.git
    cd ssh-proxy

1. Populate the *authorized*_keys file

Copy from client.example.com:~/ssh-proxy-client/id_rsa.pub
Append to server.example.com:~/ssh-proxy/authorized_keys
Repeat if there are other clients.
 
1. Run the server
    
    ./run.sh up

## at client.example.com

1. Run the client
    
    ./run.sh up

1. Check the proxy

This should return server's ip address

    curl --socks5-hostname 127.0.0.1:11050 ifconfig.me
