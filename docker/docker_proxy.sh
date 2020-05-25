#setup sock5 proxy for docker daemon
#/bin/bash
mkdir /etc/systemd/system/docker.service.d/
cat <<EOF > /etc/systemd/system/docker.service.d/http-proxy.conf
[Service] 
Environment="HTTP_PROXY=socks5://192.168.18.252:7070"
EOF
systemctl daemon-reload
systemctl restart docker
