#!/bin/sh

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")
psql -U proyecto proyecto < $DIR/proyecto.sql
psql -U proyecto proyecto_test < $DIR/proyecto.sql

