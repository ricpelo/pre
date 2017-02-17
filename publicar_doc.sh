#!/bin/sh

rm -rf docs/
vendor/bin/apidoc api commands,controllers,assets,models,views docs --pageTitle="VideoYii API" --guide=. --guidePrefix=guide- --interactive=0
vendor/bin/apidoc guide guia docs --pageTitle="Guía de VideoYii" --guidePrefix=guide- --apiDocs=. --interactive=0
touch docs/.nojekyll
