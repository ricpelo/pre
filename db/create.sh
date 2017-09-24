#!/bin/sh

sudo -u postgres dropuser --if-exists proyecto
sudo -u postgres dropdb --if-exists proyecto
sudo -u postgres psql -c "create user proyecto password 'proyecto' superuser;"
sudo -u postgres createdb -O proyecto proyecto
sudo -u postgres createdb -O proyecto proyecto_test

