#!/bin/bash
# description: cleanup and change some config params

set -e

AUTHOR=$1
REPOSITORY=$2
REPOSITORY_UNDERSCORE=$(echo $REPOSITORY | tr '-' '_')

# update repo and author
sed -i "s/python-starter-template/$REPOSITORY/g" README.md pyproject.toml 
sed -i "s/ablil/$AUTHOR/g" pyproject.toml LICENSE
sed -i "s/^version.*/version = \"0.0.1\"/g" pyproject.toml

# rename packages
mv python_starter_template "$REPOSITORY_UNDERSCORE"
sed -i "s/python_starter_template/$REPOSITORY_UNDERSCORE/g" tests/*.py

# cleanup
rm -f .github/workflows/cleanup.yaml
rm -f cleanup.sh

git add .
git commit -m 'cleanup'
git push origin HEAD
