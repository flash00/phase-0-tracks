# Pseudocode for word-guessing game
#all rspec tests passed prior to adding user interface

#declare and initialize class

class Wordgame
  attr_accessor :guess
  attr_accessor :str
  attr_accessor :hint
  attr_accessor :word_lth
  def initialize(str)
    @str = str
    @guess = guess
    @guess_count = 0
    @limit = 0
    @result = ""
    @word_lth = word_lth
  end

# step 1 get number based on length of entered string

  def get_length(str)
    @str.length.to_i
  end

# step 2 show player how long word is

  def show_word_length
    @word_lth = @str.length.to_i
     p "-" * @word_lth
  end

# step 3 number of guesses allowed is calculated by doubling the length of the entered string

  def guess_limit(str)
    @limit = @str.length.to_i * 2
  end

# step 4 compare guess against entered string
# step 5 if word not guessed print “You cannot defeat Word-Mojo!”

  def met_limit
    if @limit == @guess_count
        print "You cannot defeat Word-Mojo!"
        return
    end
  end

# step 6 repeated guesses do not count against player

def repeat_guess(guess, str)
  if @guess != @str[-1]
    print "Repeat. Please guess different letter."
    return
  end
end

# step 7 if characters of entered guess are in string include in result shown to player and use hyphens for missing letters
# step 8 repeat steps 6 and 7 with successive guesses until either guesses allowed runs out or word is guessed

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

# step 9 if word is guessed correctly print “You are a Word-Mojo Master!”

def win_game
  if @result == @str
    print "You are a Word-Mojo Master!"
  end
end

end

#user interface

p "Welcome to Word-Mojo!"
p "Player 1, please enter a word."
@str = gets.chomp
word = Wordgame.new(@str)
p word.show_word_length
p "Player 2 enter a letter to see if it's in Player 1's word."
@guess = gets.chomp
p word.compare_guess(@guess, @str)
p "Player 2 enter another letter."
@guess = gets.chomp
p word.compare_guess(@guess, @str)