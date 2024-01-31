#!/bin/sh

sh db-setup.sh
echo "Start the node server"
node src/index.js
echo "Tried to start server"