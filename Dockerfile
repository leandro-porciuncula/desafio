FROM public.ecr.aws/docker/library/node:18

# Criar diretório de trabalho
WORKDIR /app


# Instalar dependências
COPY package*.json ./
RUN npm install


# Copiar arquivos
COPY . . 


# Expor porta
EXPOSE 3000

# Start
CMD ["npm", "start"]

