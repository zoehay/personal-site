#!/bin/bash
 
openssl req -x509 -out ./certs/localhost.crt -keyout ./certs/localhost.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=localhost' -extensions EXT -config <( \
   printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

openssl req -x509 -out ./certs/e-commerce.localhost.crt -keyout ./certs/e-commerce.localhost.key \
    -newkey rsa:2048 -nodes -sha256 \
    -subj '/CN=e-commerce.localhost' -extensions EXT -config <(printf "[dn]\nCN=e-commerce.localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:e-commerce.localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
