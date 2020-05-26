import time
from pynput.keyboard import Key, Controller

keyboard = Controller()
i = 0

for i is 5:
    if i == 5:
        break
    else:
        keyboard.press('a')
        keyboard.release('a')
        i += 1
        continue

time.sleep(2)