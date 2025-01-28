# Imagem base do Ubuntu
FROM ubuntu:latest

# Atualizar pacotes e instalar dependências
RUN apt-get update && apt-get install -y curl wget python3 python3-pip

# Instalar o Ollama
RUN curl -fsSL https://ollama.com/install.sh | bash

# Expor a porta usada pelo Ollama
EXPOSE 11434

# Configurar para o Ollama escutar em todas as interfaces
ENV OLLAMA_HOST=http://0.0.0.0:11434

# Comando para iniciar o Ollama
CMD ["ollama", "serve"]
