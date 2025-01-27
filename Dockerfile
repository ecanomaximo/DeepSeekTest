FROM ubuntu:latest

# Instale dependências
RUN apt-get update && apt-get install -y curl wget python3 python3-pip

# Instale o Ollama
RUN curl -fsSL https://ollama.com/install.sh | bash

# Exponha a porta padrão
EXPOSE 11434

# Inicie o servidor Ollama
CMD ["ollama", "serve"]
