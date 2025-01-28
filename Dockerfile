FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl wget python3 python3-pip

RUN curl -fsSL https://ollama.com/install.sh | bash

EXPOSE 11434

ENV OLLAMA_BIND=0.0.0.0

CMD ["ollama", "serve"]
