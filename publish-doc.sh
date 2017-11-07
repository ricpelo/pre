#!/bin/sh

rm -rf docs/
./yii api .,vendor/yiisoft/yii2 docs/api --pageTitle="API del proyecto" --guide=.. --guidePrefix= --exclude="docs,vendor,tests,yii2-apidoc" --interactive=0 --template="project"
./yii guide guia docs --pageTitle="Guía del proyecto" --guidePrefix= --apiDocs=./api --interactive=0 --template="project"
ln -sf README.html docs/index.html
touch docs/.nojekyll
