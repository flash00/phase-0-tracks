class Game
  attr_accessor :guess
  attr_accessor :word
  attr_accessor :word_length
  attr_accessor :result
  attr_accessor :limit
  attr_accessor :guess_count

  def initialize(word)
    @word = word
    @guess = guess
    @guess_count = 0
    @limit = limit
    @word_length = word_length
    @result = result
  end

# Step one: measure word
# Input : word
# Action: measure number of characters in word
# Output : string of hyphens the length of word,

  def show_word_length
    @word_length = @word.length.to_i
    @result = "-" * @word_length
  end

# Step two: limit guesses
# Input: word length
# Action: guess limit is double word length
# Output: cut off guesses when count reaches 2 times word length

  def limit_guesses
    @limit = @word.length.to_i * 2
  end

# Step three: repeats
# Input: repeat letter guess
# Action: compare current guess to previous guesses
# Output: Do not increment guess count if in previous guesses.

  def repeat_guess(guess)
    if @result.include? guess
      p "Repeat. Please guess different letter."
    end
  end

# Step four: feedback
# Input: guess
# Action: print status of guesses
# Output: string of hyphens the length of word with accurate guesses replacing hyphen placeholders

  def compare_guess(guess)
    if @word.include? guess
      i = @word.index(guess)
      @result.insert(i, guess)
      @result =
      @result.split("").delete_at(i+1)
      # @result = result_array.
      @result
    end
    p @result
    @guess_count += 1
  end

# Step five: message
# Input: end of game
# Action: evaluate whether game won or loss
# Output: congratulatory or taunting message

  def win_game(result)
    if result == @word
      p "You are a Word-Mojo Master!"
    else
      p "Game Over. You cannot defeat Word_Mojo!"
    end
  end

end


# USER INTERFACE

puts "Welcome to Word-Mojo!"
puts "Player 1, please enter a word."
@word = gets.chomp

game = Game.new(@word)
print "This is the word length: "
puts game.show_word_length
game.limit_guesses.times do
  puts "Player 2 guess a letter or type 'done' to exit."
  @guess = gets.chomp
  break if @guess == 'done'
  game.repeat_guess(@guess)
  game.compare_guess(@guess)
  if @result == @word
    game.win_game(@result)
  elsif @guess_count.to_i >= @limit.to_i
    game.win_game(@result)
  end
end


