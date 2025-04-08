# PS5-IPV6-Host
Host the the PS5 IPV6 Exploit on a Raspberry Pi or on any Ubuntu based OS

## Install:

<br>

```sh
sudo apt update
curl -s https://raw.githubusercontent.com/BenNoxXD/PS5-UMTX-Host/refs/heads/ipv6/install_ps5_server.sh | sudo bash
```

<br>


## Docker
You can also run it bundled in a Docker Container

<br>

```sh
docker build -t ps5-ipv6-host .
docker run -d -t -p 8006:8000 --name PS5-ipv6-Host --restart always ps5-ipv6-host
```

<br>
