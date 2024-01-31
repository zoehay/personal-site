FROM node:alpine
RUN apk update && apk add --no-cache postgresql-client

WORKDIR /usr/src/app

COPY . .
RUN npm install 
RUN chmod +x ./e-commerce-setup.sh
EXPOSE 8000

CMD sh e-commerce-setup.sh
# RUN npx prisma migrate deploy
# RUN npx prisma generate
# RUN npx prisma db seed

ENTRYPOINT ["node", "src/index.js"]