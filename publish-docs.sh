#!/bin/sh

api()
{
    ./yii api .,vendor/yiisoft/yii2 docs/api --pageTitle="API del proyecto" --guide=.. --guidePrefix= --exclude="docs,vendor,tests,yii2-apidoc" --interactive=0 --template="project"
}

guide()
{
    ./yii guide guia docs --pageTitle="Guía del proyecto" --guidePrefix= --apiDocs=./api --interactive=0 --template="project"
    ln -sf README.html docs/index.html
}

if [ "$1" = "-a" ]
then
    rm -rf docs/api
    api
elif [ "$1" = "-g" ]
then
    if [ -d docs ]
    then
        find docs -maxdepth 1 -not -path "docs" -not -name "api" -print0 | xargs -0 rm -rf
    fi
    guide
else
    rm -rf docs/
    api
    guide
fi

touch docs/.nojekyll
