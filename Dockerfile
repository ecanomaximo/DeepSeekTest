
FROM ubuntu:latest

# Instala dependências necessárias
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Copia os arquivos do projeto
COPY . /app
WORKDIR /app

# Instala dependências do Ollama
RUN pip3 install -r requirements.txt

# Comando para iniciar o Ollama
CMD ["ollama serve"]
