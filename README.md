# personal-site
Personal website with static site and e-commerce application. Docker compose starts Postgresql, e-commerce Node server, and Nginx. 

## For Production

`deploy-docker-compose-service.sh` is run once to copy the docker-compose service to the new machine then enable and start the service. Use docker-compose service to stop and start the application. 

## For Local Dev

From directory local-certs `mkdir certs` and run local-certs.sh for self-signed certs.
For each cert `open ${cert-name}.crt`. From login>Certificates change to 'Always Trust' and restart browser.
`local-` apps in www are built to request from localhost. 

## etc

nginx conf

## www

public site content
