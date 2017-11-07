#!/bin/sh

rm -rf docs/
vendor/bin/apidoc api . docs/api --pageTitle="API del proyecto" --guide=.. --guidePrefix= --exclude="docs,vendor,tests" --interactive=0
vendor/bin/apidoc guide guia docs --pageTitle="Guía del proyecto" --guidePrefix= --apiDocs=./api --interactive=0
ln -sf README.html docs/index.html
touch docs/.nojekyll
