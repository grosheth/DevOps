#!/bin/bash

#Classer les resultats par ordre de consommation de cpu

user=alex

ps aux --sort -rss | grep $user