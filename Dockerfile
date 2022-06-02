FROM node:16.13.1

# Buat Nodejs App Direktori pada Container
WORKDIR /usr/src/app

# copy semua file package.json ke dalam Direktori Nodejs App di container
COPY package*.json ./

RUN npm install
# jalankan perintah npm install untuk menginstall dependensi yang diperlukan 

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]