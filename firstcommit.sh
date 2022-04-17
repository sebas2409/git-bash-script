#! /bin/sh

name=$1
visibility=$2


if [ -z "$name" || -z "$visibility" ]
then
      echo "Es necesario introducir el nombre del repo para hacer el push"
else
      git init 
      git add .
      git commit -m "first commit"
      gh repo create -s=. --$visibility --remote=$name --push  

fi
     
