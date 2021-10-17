# Random library 

import random , os

# Creer le nombre et faire le premier essaie
def main():

    value = random.randint(0, 1000) # Generer un nombre random entre 0 et 1000
    i = 10

    while True:
        try:
            guess = int(input("Deviner le nombre: "))
            break
        except ValueError:
            print("Veuillez n'entrer que des nombres...")
            continue
    

    # Le jeu
    for x in range(10):

        i -= 1 
        print ("Il vous reste " + str(i) + " essais")
        if int(guess) < value:
            print ("Le nombre est plus grand")

            while True:
                try:
                    guess = int(input("Deviner le nombre: "))
                    break
                except ValueError:
                    print("Veuillez n'entrer que des nombres...")
                    continue


        elif int(guess) > value:
            print ("Le nombre est plus petit")

            while True:
                try:
                    guess = int(input("Deviner le nombre: "))
                    break
                except ValueError:
                    print("Veuillez n'entrer que des nombres...")
                    continue


        elif int(guess) == value:
            print ("Felicitation!!! le nombre etais bien " + str(value))
            break

        if i == 0:
            print ("Vous avez echouer!!! le nombre etais " + str(value))
            input("Appuyer sur ENTER pour quitter")
            break 

if __name__ == "__main__":
    print(main())       