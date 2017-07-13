# Word guessing game

class Game
  attr_accessor :guess
  attr_accessor :str
  attr_accessor :hint
  attr_accessor :word_length
  def initialize(str)
    @str = str
    @guess = guess
    @guess_count = 0
    @limit = 0
    @result = ""
    @word_lth = word_length
end

# Step one: compare word and letter
# Input : word, letter
# Action: compare letter against word
# Output : string of hyphens the length of word,

  def show_word_length(str)
    @word_length = @str.length.to_i
     puts "-" * @word_length
  end

# Step two: limit guesses
# Input: word length
# Action: compare number of guesses to word length
# Output: cut off guesses when reach 2 times word length

  def limit_guesses(str)
    @limit = @str.length.to_i * 2
  end

# Step three: repeats
# Input: repeat letter
# Action: compare to previous guesses.
# Output: Do not increment guess count if in previous guesses.

  def repeat_guess(guess, str)
    if @guess != @str[-1]
      print "Repeat. Please guess different letter."
      return
    end
  end

# Step four: feedback
# Input: guess
# Action: print status of guesses
# Output: string of hyphens the length of word with accurate guesses replacing correlated hyphens

  def compare_guess(guess, str)
#compare_guess stopped working when user interface added :(
    @guess_count = 0
    index = 0
    @result = ""
    while index < @str.length
      @guess.each_char do
      if @guess[index] == str[index]
        @result << @guess[index]
      else
        @result << "-"
      end
    @guess_count += 1
    index += 1
    end
  end
  return @result
end

# Step five: message
# Input: end of game
# Action: evaluate whether game won or loss
# Output: congratulatory or taunting message

  def win_game
    if @result == @str
      print "You are a Word-Mojo Master!"
    else
      puts "You cannot defete Word_Mojo!"
    end
  end

end