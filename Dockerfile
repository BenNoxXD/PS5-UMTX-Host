FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git python3
RUN git clone https://github.com/idlesauce/PS5-Exploit-Host
WORKDIR /PS5-Exploit-Host

CMD ["python3", "simple_server.py"]