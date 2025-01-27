FROM ubuntu:latest

# Atualizar e instalar dependências
RUN apt-get update && apt-get install -y curl wget python3 python3-pip

# Instalar o Ollama
RUN curl -fsSL https://ollama.com/install.sh | bash

# Expor a porta usada pelo Ollama
EXPOSE 11434

# Criar um script para iniciar o Ollama com o bind correto
RUN echo '#!/bin/bash\nollama serve --address=0.0.0.0 --port=11434' > /start.sh && chmod +x /start.sh

# Usar o script para iniciar o Ollama
CMD ["/start.sh"]
