#!/bin/sh

sudo -u postgres dropuser proyecto
sudo -u postgres dropdb proyecto
sudo -u postgres psql -c "create user proyecto password 'proyecto' superuser;"
sudo -u postgres createdb -O proyecto proyecto

