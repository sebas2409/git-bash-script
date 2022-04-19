#! /bin/sh


visibility=$1


if [  -z "$visibility" ]
then
      echo "ERROR fcommit <nombreRepo> <Visibilidad>"
else
      git init 
      git add .
      git commit -m "first commit"
      gh repo create -s=. --$visibility --remote=origin --push  

fi



     
