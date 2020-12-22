#!/bin/bash

# Initiate npm 

npm init -y

# Initialize git projects (assuming that git is installed)

git init

# Create all the folders

mkdir scripts/ middlewares/ config/ controllers/ env/ utils/ models/ routes/ test/

# add an index.js in all folders except scripts and env

for folder in $(ls -d */)
do 
    case "$folder" in
        # ignore scripts folder
        *"scripts") ;;
        # ignore env folder
        *"env") ;;
        # default case
        *) touch $folder/index.js
            echo "adding index.js to $folder"
            ;;
    esac
done

# create server entry point

touch server.js

# create a dockerfiles

touch Dockerfile Dockerfile.test

# create .gitignore .dockerignore and eslintignore

echo "node_modules" >> .gitignore &&
    cp .gitignore .dockerignore &&
    touch .eslintignore

# install express, cor, basic_auth and helmet

npm i express cors express-basic-auth helmet eslint

# generate basic eslint config

npx eslint --init
