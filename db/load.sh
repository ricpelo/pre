#!/bin/sh

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")
[ "$1" != "test" ] && psql -U proyecto proyecto < $DIR/proyecto.sql
psql -U proyecto proyecto_test < $DIR/proyecto.sql
