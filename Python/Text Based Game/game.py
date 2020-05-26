import time
import os
import sys
from scripts.functions import print_slow


# - Functions - #
clear = lambda: os.system('cls') #on Windows System




##### - GAME START - #####
## - Main Screen - ##
print("""\

 ██▓    ▓█████ ▄▄▄       ██▀███   ███▄    █ 
▓██▒    ▓█   ▀▒████▄    ▓██ ▒ ██▒ ██ ▀█   █ 
▒██░    ▒███  ▒██  ▀█▄  ▓██ ░▄█ ▒▓██  ▀█ ██▒
▒██░    ▒▓█  ▄░██▄▄▄▄██ ▒██▀▀█▄  ▓██▒  ▐▌██▒
░██████▒░▒████▒▓█   ▓██▒░██▓ ▒██▒▒██░   ▓██░
░ ▒░▓  ░░░ ▒░ ░▒▒   ▓▒█░░ ▒▓ ░▒▓░░ ▒░   ▒ ▒ 
░ ░ ▒  ░ ░ ░  ░ ▒   ▒▒ ░  ░▒ ░ ▒░░ ░░   ░ ▒░
  ░ ░      ░    ░   ▒     ░░   ░    ░   ░ ░ 
    ░  ░   ░  ░     ░  ░   ░              ░ 
                                              
                                              """)

print("Press a button to start")
input()
clear()

print_slow("Oh hi there. Didn't see you there, who are you?")

name = input(">>> ")

while name == "":
    if name == "":
        print("That's not a name! What is your name?")
        name = input(">>> ")
        continue
    elif name != "": 
        break    

print_slow("Oh so your name is " + name + " that is a interesting name!")
print("Welcome to the game! Are you ready?")


context = input(">>> Yes or No ")
while context == "":
    if context == "yes":
      break
    elif context == "no":
      print("We can wait :) Just say yes when you are ready")
      continue
    else:
      print("Please answer with yes or no")
      continue












#### - Ending - ####
time.sleep(1)
print("Game Over. Press Enter to Exit the Game :)")
input()

