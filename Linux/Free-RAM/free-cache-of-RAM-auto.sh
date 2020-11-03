#!/bin/bash

sudo su

echo 3 > /proc/sys/vm/drop_caches

exit

sysctl -w vm.drop_caches=3

sleep 2

exit
