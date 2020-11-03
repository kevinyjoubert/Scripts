#!/bin/bash

echo Digite um numero qualquer:
read numero

if [ $numero -gt 20 ];
then
	echo Este numero é maior que 20!
fi
