math.randomseed(tonumber(tostring(os.time()):reverse():sub(1,6)))
Correct = math.random(1,100)
repeat
io.write("Guess a number: ")
    guess = io.read()
until tonumber(guess) == Correct
io.write("You were right! The answer was ", Correct, "!")