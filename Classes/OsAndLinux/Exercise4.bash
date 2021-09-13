#!/bin/bash

#Classer les resultats par ordre de consommation de Memoire

user=alex

ps aux --sort -rss | grep $user