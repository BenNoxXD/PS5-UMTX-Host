FROM alpine:latest

ENV PYTHONUNBUFFERED=1

RUN apk update
RUN apk add --no-cache wget
RUN apk add git
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python

RUN git clone https://github.com/idlesauce/PS5-UMTX-Jailbreak/
WORKDIR /PS5-UMTX-Jailbreak
RUN wget https://raw.githubusercontent.com/idlesauce/PS5-Exploit-Host/refs/heads/main/simple_server.py

CMD ["python", "simple_server.py"]
