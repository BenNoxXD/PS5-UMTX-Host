FROM python:latest

RUN apt-get install -y git wget
RUN git clone https://github.com/idlesauce/PS5-UMTX-Jailbreak/
WORKDIR /PS5-UMTX-Jailbreak
RUN wget https://raw.githubusercontent.com/idlesauce/PS5-Exploit-Host/refs/heads/main/simple_server.py

CMD ["python", "simple_server.py"]
