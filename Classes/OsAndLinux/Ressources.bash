#!/bin/bash

# Boucle for, chaque parametre est compter et creer

echo "all params $*"
echo "number of params : $#"

param=

for param in $*
do
echo $param
done


# Boucle While, Compte le score entrer par le prompt

sum=0

while true
 do
 read -p "enter a score" score

 if [ $score == "q" ]
 then
  break
 fi

 sum=$(($sum+$score))
 echo "total score : $sum"

 done