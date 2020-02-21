import time

def print_slow(txt):  #slow printing text
    for x in txt:                     # cycle through the text one character at a time
        print(x, end='', flush=True)  # print one character, no new line, flush buffer
        time.sleep(0.05)
    print() # go to new line