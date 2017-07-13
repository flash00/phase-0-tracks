# Word guessing game

class Game
  attr_accessor :guess
  attr_accessor :string
  attr_accessor :word_length
  def initialize(word)
    @word = word
    @guess = guess
    @guess_count = 0
    @limit = 0
    @result = ""
    @word_length = word_length
end

# Step one: compare word and letter
# Input : word, letter
# Action: compare letter against word
# Output : string of hyphens the length of word,

  def show_word_length
    @word_length = @word.length.to_i
     p "-" * @word_length
  end

# Step two: limit guesses
# Input: word length
# Action: compare number of guesses to word length
# Output: cut off guesses when reach 2 times word length

  def limit_guesses
    @limit = @word.length.to_i * 2
  end

# Step three: repeats
# Input: repeat letter
# Action: compare to previous guesses.
# Output: Do not increment guess count if in previous guesses.

  def repeat_guess(guess)
    p @result
    if @guess != @result[-1]
      p "Repeat. Please guess different letter."
    end
  end

# Step four: feedback
# Input: guess
# Action: print status of guesses
# Output: string of hyphens the length of word with accurate guesses replacing correlated hyphens

  def compare_guess(guess)
    @guess_count = 0
    array = @word.split("")
    array.each do |letter|
      if guess == letter
        @result << guess
      else
        @result << "-"
      end
    @guess_count += 1
    end
  @result
end

# Step five: message
# Input: end of game
# Action: evaluate whether game won or loss
# Output: congratulatory or taunting message

  def win_game(result)
    if @result == @word
      p "You are a Word-Mojo Master!"
    else
      p "Game Over. You cannot defete Word_Mojo!"
    end
  end

end

# test = Game.new("apple")
# puts test.repeat_guess("a")