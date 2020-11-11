#!/bin/bash

#caso não queira ver nenhuma informação que esta sendo feita na tela, insira &> /dev/null

echo "fazendo o download do github-desktop"

sudo apt install github-desktop -y &> /dev/null

echo
echo "finalizado o download"
echo 