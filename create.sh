#!/bin/bash
rm -r $1
mkdir $1
chmod 777 -fR "/home/cristian/ci/"$1
cd $1
copier copy gh:Tecnativa/doodba-copier-template "/home/cristian/ci/"$1
invoke develop
invoke img-pull img-build --pull git-aggregate resetdb start
code .
