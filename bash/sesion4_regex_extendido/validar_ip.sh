#!/bin/bash
if [[ $1 =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
    echo "$1 tiene formato de ip"
else
    echo "$1 no tiene formato de ip"
fi

#En este script 999.999.999.999 lo validaria ya que le decimos que 
#puede ser cualquier numero no entre 1 y 255