FROM python:latest

RUN apt-get install -y git wget
RUN git clone https://github.com/idlesauce/PS5-UMTX-Jailbreak/
WORKDIR /PS5-UMTX-Jailbreak
RUN wget https://raw.githubusercontent.com/idlesauce/PS5-Exploit-Host/refs/heads/main/simple_server.py
RUN rm -r document/en/ps5/payloads
RUN git clone https://github.com/BenNoxXD/PS5-UMTX-Host/
RUN cp -r PS5-UMTX-Host/payload_map.js document/en/ps5
RUN cp -r PS5-UMTX-Host/payloads document/en/ps5/
RUN rm -r PS5-UMTX-Host

CMD ["python", "simple_server.py"]