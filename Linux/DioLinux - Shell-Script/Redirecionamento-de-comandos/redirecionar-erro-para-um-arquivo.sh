#!/bin/bash

#para redirecionar a mensagem de um erro para um arquivo, coloque o 2>

#esse comando envia somente o erro pra dentro do arquivo desejado

echo "fazendo a saida do erro utilizando 2>"
echo

apt update 2> saida_error

echo 
echo "Segue a mensagem da saida do erro"
echo

cat saida_error


echo
echo "Arquivo da saida de erro sendo apagada!"

rm -r saida_error

echo "Aperte qualquer tecla para continuar:"
read
clear

#para redirecionar a mensagem de saida e o erro juntos, utilize o 2>&1 ou o shorthand &>

echo "fazendo a saida do erro utilizando no final do comando 2>&1"
echo

apt update 1> saida_error 2>&1

echo
echo "Segue a mensagem da saida do erro, usando 2>&1 no final do comando"
echo

cat saida_error

echo
echo "Arquivo da saida de erro sendo apagada!"

rm -r saida_error

echo "Aperte qualquer tecla para continuar:"
read
clear


#utilizando o shorthand &>

echo "fazendo a saida do erro utilizando o shorthand &>"
echo 

apt update &> saida_error

echo 
echo "Segue a mensagem da saida do erro, usando o shorthand"
echo

cat saida_error

echo
echo "Arquivo da saida de erro sendo apagada!"

rm -r saida_error

echo "Aperte qualquer tecla para continuar:"
read
clear