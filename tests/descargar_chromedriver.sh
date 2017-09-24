#!/bin/sh

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")
echo "Descargando la última versión de ChromeDriver..."
ZIP=chromedriver_linux64.zip
VERSION=$(curl https://chromedriver.storage.googleapis.com/LATEST_RELEASE)
curl -o $DIR/$ZIP https://chromedriver.storage.googleapis.com/$VERSION/$ZIP
unzip -o $DIR/$ZIP -d $DIR
rm $DIR/$ZIP

