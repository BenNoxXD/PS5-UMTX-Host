# PS5-UMTX2-Host
Host the UMTX2 PS5 Exploit on a Raspberry Pi or an any Ubuntu based OS

## Install:

<br>

```sh
sudo apt update
curl -s https://raw.githubusercontent.com/BenNoxXD/PS5-UMTX-Host/refs/heads/umtx2/install_ps5_server.sh | sudo bash
```

<br>


## Docker
You can also run it bundled in a Docker Container

<br>

```sh
docker build -t ps5-umtx2-host .
docker run -d -t -p 8002:8000 --name PS5-UMTX2-Host --restart always ps5-umtx2-host
```

<br>
