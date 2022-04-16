#! /bin/sh

url=$1

if [-z "$url"]
then
     echo " Es necesario introducir la url para poder hacer el push"
else
     git init
     git add .
     git remote add origin $url 
     git commit -m "first commit"
     git push -u origin main
fi
     
