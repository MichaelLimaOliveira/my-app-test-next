# Usando a imagem oficial do Node.js
FROM node:16

# Define o diretório de trabalho
WORKDIR /app

# Copia o package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todo o código da aplicação para o diretório de trabalho
COPY . .

# Constrói a aplicação Next.js
RUN npm run build

# Expõe a porta que o Next.js usará
EXPOSE 3000

# Comando para iniciar a aplicação Next.js
CMD ["npm", "start"]