# PS5-UMTX-Host
Host the UMTX PS5 Exploit on a Raspberry Pi or an any Debian based OS with your custom config

## Install:

<br>

```sh
sudo apt update
curl -s https://raw.githubusercontent.com/BenNoxXD/PS5-UMTX-Host/refs/heads/main/install_ps5_server.sh | sudo bash
```

<br>


## Docker
You can also run it bundled in a Docker Container

<br>

```sh
docker build -t ps5-umtx-host .
docker run -d -t -p 8000:8000 --name PS5-UMTX-Host --restart always ps5-umtx-host
```

<br>
