FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install user-agents axios colors https-proxy-agent socks-proxy-agent ws 

COPY . .

RUN mkdir -p logs

RUN chmod +x start.sh

EXPOSE 3000

CMD ["node", "meomundep"]
