FROM ubuntu:latest

# Atualizar e instalar dependências
RUN apt-get update && apt-get install -y curl wget python3 python3-pip

# Instalar o Ollama
RUN curl -fsSL https://ollama.com/install.sh | bash

# Expor a porta usada pelo Ollama
EXPOSE 11434

# Configurar para escutar em todas as interfaces
ENV OLLAMA_BIND=0.0.0.0

# Iniciar o servidor Ollama
CMD ["ollama", "serve"]
