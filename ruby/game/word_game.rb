class Game
  attr_reader :result, :word, :guess_count

  def initialize(word)
    @word = word
    @result = "-" * word.length
    @guess_count = word.length * 2
  end

  def repeat_guess(guess)
    if @result.include?(guess)
      puts "Repeat. Please guess different letter."
    end
  end

  def compare_guess(guess)
      if @word.include?(guess)
        index_of_letter = @word.index(guess)
        @result[index_of_letter] = guess
        puts "Your puzzle now...#{@result}."
      end
  end

  def game_over
    @result == @word
  end

  def win_game
    if @result == @word
      puts "You are a Word-Mojo Master!"
    else
      puts "Game Over. You cannot defeat Word_Mojo!"
    end
  end
end


# USER INTERFACE

puts "Welcome to Word-Mojo!"
puts "Player 1, please enter a word."
word = gets.chomp
sleep(1)
puts "\e[H\e[2J"
game = Game.new(word)
puts "This is the word length: #{game.result}"

game.guess_count.times do
  puts "Player 2, guess a letter or type 'done' to exit."
  guess = gets.chomp
  break if guess == 'done'
  break if game.game_over
  game.repeat_guess(guess)
  game.compare_guess(guess)
end

game.win_game

#PSEUDOCODE

# Step one: measure word
# Input : word
# Action: measure number of characters in word
# Output : string of hyphens the length of word,

# Step two: limit guesses
# Input: word length
# Action: guess limit is double word length
# Output: cut off guesses when count reaches 2 times word length

# Step three: repeats
# Input: repeat letter guess
# Action: compare current guess to previous guesses
# Output: Do not increment guess count if in previous guesses.

# Step four: feedback
# Input: guess
# Action: print status of guesses
# Output: string of hyphens the length of word with accurate guesses replacing hyphen placeholders

# Step five: message
# Input: end of game
# Action: evaluate whether game won or loss
# Output: congratulatory or taunting message