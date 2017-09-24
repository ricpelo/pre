#!/bin/sh

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")
ACTUAL=$PWD
if [ -f $DIR/acceptance.suite.yml ]
then
    if [ "$1" != "-d" ]
    then
        cd $DIR/..
        echo "Ejecutando chromedriver --url-base=/wd/hub ..."
        $DIR/chromedriver --url-base=/wd/hub &
        echo "Ejecutando ./yii serve ..."
        if [ "$1" = "-q" ]
        then
            ./yii serve 2>/dev/null &
        else
            ./yii serve &
        fi
        cd $ACTUAL
    else
        echo "Matando los procesos en los puertos 8080 y 9515..."
        fuser -k -n tcp 8080
        fuser -k -n tcp 9515
    fi
fi

