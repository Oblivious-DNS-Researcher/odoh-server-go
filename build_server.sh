export PATH=$PATH:/usr/local/go/bin
mkcert -key-file key.pem -cert-file cert.pem 127.0.0.1 localhost

make all
CERT=cert.pem KEY=key.pem PORT=4567 ./odoh-server