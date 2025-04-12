#!/bin/bash
# description: cleanup and change some config params

set -e

AUTHOR=$1
REPOSITORY=$2

sed -i "s/python-starter-template/$REPOSITORY/g" README.md pyproject.toml 
sed -i "s/ablil/$AUTHOR/g" pyproject.toml LICENSE
sed -i "s/^version.*/version = \"0.0.1\"/g" pyproject.toml

rm -f cleanup.sh

git add .
git commit -m 'cleanup'
git push origin HEAD
