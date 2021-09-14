#!/bin/bash

#############Boucle for, chaque parametre est compter et creer ##########################################

echo "all params $*"
echo "number of params : $#"

param=

for param in $*
do
echo $param
done


######################### Boucle While, Compte le score entrer par le prompt #########################

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



############################# Fonctions ###########################

function score_sum {
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
}

score_sum


function create_file(){
file_name=$1
is_shell_script=$2
touch $file_name
if [ "is_shell_script" = true ]
then
chmod u+x $file_name
echo "file $file_name0 created"
echo "file execute permission"
fi
}

create_file test.txt

create_file myfile.yaml

create_file myscript.sh true

function sum(){
total=$(($1+$2))
 return $total
}

sum 2 10
result=$?  #Capture value returned by last command



############################################### Backup Script ##############################################

# What to backup
backups_files="/home/alex/bash.txt"

# Where
dest="/home/alex/backup"

# create archive filenmame
day=$(date +%A)
hostname=$(hostname -s)
archive_files="$hostname-$day.tgz"

# print start status message
echo "Backing up $backups_files to $dest/$archives_file"
date
echo
S
# backup files using tar
tar czf $dest/$archive_file $backup_files

# print emd status message
echo
echo "Backup Finished"

