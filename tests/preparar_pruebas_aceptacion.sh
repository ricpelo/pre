#!/bin/sh

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")
ACTUAL=$PWD
cd $DIR/..
$DIR/descargar_chromedriver.sh
ACCEPT=tests/acceptance.suite.yml
if [ -f $ACCEPT ]
then
    echo -n "El archivo $ACCEPT ya existe. ¿Desea sobreescribirlo? (s/N): "
    read SN
    [ "$SN" = "n" ] && SN="N"
fi
if [ "$SN" != "N" ]
then
    echo "Copiando $ACCEPT.example sobre $ACCEPT..."
    cp -f $ACCEPT.example $ACCEPT
fi
if ! grep -qs "codeception/codeception" composer.json
then
    echo "Pasando de codeception/base a codeception/codeception..."
    sed -i s%codeception/base%codeception/codeception%g composer.json
    echo "Ejecutando composer update..."
    composer update
else
    echo "Ya se requiere codeception/codeception en composer.json."
fi
cd $ACTUAL

