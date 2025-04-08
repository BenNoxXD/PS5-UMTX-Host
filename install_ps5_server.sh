# install dependencies
sudo apt-get install -y git python3 wget
# remove old version
sudo systemctl stop ps5hostipv6
sudo systemctl disable ps5hostipv6
rm /etc/systemd/system/ps5hostipv6.service
cd /opt
sudo rm -r PS5-UMTX-Jailbreak
# download new version
sudo git clone https://github.com/idlesauce/PS5-Exploit-Host
cd PS5-Exploit-Host
# create a service for autostart
cat > /etc/systemd/system/ps5hostipv6.service <<- "EOF"
[Unit]
Description=PS5 UMTX Host idlesauce

[Service]
WorkingDirectory=/opt/PS5-Exploit-Host/
ExecStart=/usr/bin/python3 simple_server.py

[Install]
WantedBy=multi-user.target
EOF
# enable the service
sudo systemctl start ps5hostipv6
sudo systemctl enable ps5hostipv6
