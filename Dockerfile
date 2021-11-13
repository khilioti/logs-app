FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

#ENV PORT 3670

#EXPOSE $PORT
EXPOSE 3636

VOLUME ["/app/data"]

CMD ["node", "app.js"]