# install dependencies
sudo apt-get install -y git python3 wget
# remove old version
sudo systemctl stop ps5hostumtx2
sudo systemctl disable ps5hostumtx2
rm /etc/systemd/system/ps5hostumtx2.service
cd /opt
sudo rm -r umtx2
# download new version
sudo git clone https://github.com/idlesauce/umtx2/
cd umtx2
sudo wget https://raw.githubusercontent.com/idlesauce/PS5-Exploit-Host/refs/heads/main/simple_server.py
# create a service for autostart
cat > /etc/systemd/system/ps5hostumtx2.service <<- "EOF"
[Unit]
Description=PS5 UMTX Host idlesauce

[Service]
WorkingDirectory=/opt/umtx2/
ExecStart=/usr/bin/python3 simple_server.py

[Install]
WantedBy=multi-user.target
EOF
# enable the service
sudo systemctl start ps5hostumtx2
sudo systemctl enable ps5hostumtx2
