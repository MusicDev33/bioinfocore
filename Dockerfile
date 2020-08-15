FROM node:12
WORKDIR	~/apps/bioinfocore
COPY package*.json ./

RUN npm	install

COPY . .

RUN npm run sass:build

EXPOSE 3000
CMD ["node", "src/index.js"]
