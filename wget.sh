#!/bin/sh

URL=$1

if [ -z "$URL" ]; then
    echo "Usage: $0 <website_url>"
    exit 1
fi

echo "Downloading favicon from $URL"
wget -O favicon.ico "$URL"/favicon.ico

if [ $? -eq 0 ]; then
    echo "Favicon downloaded successfully."
else
    echo "Failed to download favicon."
fi