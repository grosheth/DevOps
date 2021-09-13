#!/bin/bash

#Classer les resultats par ordre de consommation de memoire et reduire le nombre de resultat afficher

user=alex

ps aux --sort -rss | grep $user | head -n 20