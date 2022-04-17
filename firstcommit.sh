#! /bin/sh

name=$1
visibility=$2


if [ -z "$name" || -z "$visibility" ]
then
      echo "ERROR fcommit <nombreRepo> <Visibilidad>"
else
      git init 
      git add .
      git commit -m "first commit"
      gh repo create -s=. --$visibility --remote=$name --push  

fi



     
