sudo apt-get install git -y
sudo apt-get indtall python -y 
sudo rm -r /home/$USER/PS5-UMTX-Host/
git clone https://github.com/BenNoxXD/PS5-UMTX-Host/
cd PS5-UMTX-Host
git clone https://github.com/PS5Dev/PS5-UMTX-Jailbreak
cd PS5-UMTX-Jailbreak
truncate -s 0 dns.conf
cd ..
chmod 777 run.sh
sudo reboot
