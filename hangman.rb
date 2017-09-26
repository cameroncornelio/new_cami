correct_word = "hello"
letters = ["h", "e", "l", "l", "o"]
correct_guesses = 0
wrong_guesses = 0
guesses = 7
# keep playing the game until they run out of guesses or they guess all the letters
while guesses > 0 && correct_guesses < 4
  puts "Guess a letter."
  guess = gets.chomp
  # if they guess a correct letter
    # tell them
    # add one to correct_guesses
    # then have them guess again

  # if they guess an incorrect letter
    # tell them
    # subtract one from guesses
    # then have them guess again
    if letters.include? guess
      correct_guesses = 1 + correct_guesses
      puts "You got one!"
      puts "You have #{guesses} guesses left."
    else
      guesses = guesses - 1
      puts "Try again!"
      puts "You have #{guesses} guesses left."
    end
end
if correct_guesses == 4
  puts "You guessed it!"
  puts "The word was hello."
elsif guesses == 7
  puts "You're out of guesses. Sorry."
end
