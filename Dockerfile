FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git wget python3
RUN git clone https://github.com/idlesauce/umtx2/
WORKDIR /umtx2
RUN wget https://raw.githubusercontent.com/idlesauce/PS5-Exploit-Host/refs/heads/main/simple_server.py

CMD ["python3", "simple_server.py"]