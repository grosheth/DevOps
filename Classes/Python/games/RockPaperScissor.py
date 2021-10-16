import random

def play():

    user = input("Roche,papier,sciseaux!!! \n'r'pour roche, 'p' pour papier , 's' pour sciseaux  ")
    computer = random.choice(['r', 'p', 's'])

    if user == computer:
        return 'match nul'

    if win(user, computer):
        return 'Vous avez gagner'
        
    return 'Vous avez perdu' 

    # r > s, s > p , p > r
def win(player, opponent):
    # return true if player wins
    if(player == 'r' and opponent == 's') or (player == 's' and  opponent == 'p') or (player == 'p' and  opponent == 'r'):
        return True


if __name__ == '__RockPaperScissor__':
    print(play())