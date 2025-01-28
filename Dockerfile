# Base image
FROM python:3.9-slim

# Atualiza o sistema e instala dependências básicas
RUN apt-get update && apt-get install -y \
    curl \
    && apt-get clean

# Instala o Ollama (presumindo que haja um script ou dependência para isso)
# Ajuste conforme necessário para o processo de instalação do Ollama
RUN pip install --no-cache-dir ollama

# Cria o diretório do app
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY . /app

# Define o comando de inicialização
CMD ["ollama", "run"]
