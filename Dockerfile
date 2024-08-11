# Use uma imagem base do Node.js
FROM node:18-alpine

# Crie um diretório de trabalho
WORKDIR /home/node/.n8n

# Instale o n8n globalmente
RUN npm install -g n8n

# Defina as variáveis de ambiente necessárias
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=rafasouza
ENV N8N_BASIC_AUTH_PASSWORD=4abaff64
ENV N8N_URL=https://workflows.rafasouza.dev
ENV N8N_SECURE_COOKIE=true
ENV N8N_WEBHOOK_URL=https://workflows.rafasouza.dev
ENV N8N_HOST=workflows.rafasouza.dev
ENV NODE_ENV=production
ENV WEBHOOK_URL=https://workflows.rafasouza.dev/
ENV NODE_FUNCTION_ALLOW_BUILTIN=crypto,fs
ENV NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,@google-cloud/speech

# Exponha a porta que o n8n usará
EXPOSE 5678

# Comando para iniciar o n8n
CMD ["n8n"]
