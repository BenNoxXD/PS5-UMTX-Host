cd /home/$USER/PS5-UMTX-Host/PS5-UMTX-Jailbreak/
sudo python3 fakedns.py -c dns.conf -i $(hostname -I) &
sudo python3 host.py
