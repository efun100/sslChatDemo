openssl genrsa -out privkey.pem 2048
openssl req -new -x509 -key privkey.pem -out cacert.pem -days 3650
gcc sslClient.c api.c -o client -lssl -lcrypto
gcc sslServer.c api.c -o server -lssl -lcrypto

#./server 8888 cacert.pem privkey.pem
#./client 127.0.0.1 8888
