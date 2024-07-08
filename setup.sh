#!/bin/sh
export SERVER_ADDRESS="localhost"
echo "Setting Huly Server Address: $SERVER_ADDRESS"
envsubst < template.conf > nginx.conf
envsubst < template.env > .env

./use-version.sh v0.6.245
