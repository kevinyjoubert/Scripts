#!/bin/bash

#para colorir use echo -e \e[..m  no lugar dos dois pontos insira o numero da cor, caso queira adicionar mais de uma cor, separe os numeros por ;

#lembre-se, de sempre no final, usar o default pra zerar a cor, \e[0m

VERMELHO='\e[1;91m'
VERDE='\e[1;92m'
SEM_COR='\e[0m'

echo
echo -e "${VERMELHO}TESTANDO A COR VERMELHA"
echo
echo -e "${VERDE}TESTANDO A COR VERDE"
echo 
echo -e "${SEM_COR}TESTANDO SEM COR"
echo