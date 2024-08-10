# Use a imagem oficial do n8n como base
FROM docker.n8n.io/n8nio/n8n

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /home/node/.n8n

# Copie o conteúdo do diretório atual para o contêiner (se necessário)
COPY . .

# Defina as variáveis de ambiente necessárias
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=rafasouza
ENV N8N_BASIC_AUTH_PASSWORD=4abaff64
ENV N8N_URL=https://workflows.rafasouza.dev
ENV N8N_SECURE_COOKIE=true
ENV N8N_WEBHOOK_URL=https://workflows.rafasouza.dev
ENV N8N_HOST=workflows.rafasouza
ENV NODE_ENV=production
ENV WEBHOOK_URL=https://workflows.rafasouza.dev/
ENV NODE_FUNCTION_ALLOW_BUILTIN=crypto,fs
ENV NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,@google-cloud/speech

# Exponha a porta que o n8n usará
EXPOSE 5678

# Comando para iniciar o n8n
CMD ["node", "/usr/local/bin/n8n"]
