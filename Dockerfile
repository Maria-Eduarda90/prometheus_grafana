# Usa uma imagem mínima com Docker e Compose instalados
FROM alpine:latest

# Instala dependências necessárias (Docker CLI e Docker Compose)
RUN apk add --no-cache docker-cli docker-compose bash

# Define o diretório de trabalho
WORKDIR /app

# Copia todos os arquivos do repositório para dentro do container
COPY . .

# Garante que o docker-compose tem permissão para execução
RUN chmod +x /app/docker-compose.yaml

# Define o comando de inicialização
CMD ["sh", "-c", "docker-compose up"]
