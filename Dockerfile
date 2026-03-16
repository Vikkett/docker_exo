FROM node:22-alpine

# On se place dans /app
WORKDIR /app

# On copie explicitement le fichier (sans joker *)
COPY package.json ./

# On vérifie immédiatement si le fichier est là pendant le build
RUN ls -l /app/package.json

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]