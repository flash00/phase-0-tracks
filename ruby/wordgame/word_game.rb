class Wordgame
  def initialize(str)
    @str = str
  end

  def get_length(str)
    @str.length.to_i
  end

  def guess_limit(str)
    @str.length.to_i * 2
  end

  def compare_guess(guess, str)
    char = 0
    result = ""
    while char < @str.length
      guess.each_char do
        if guess[char] == @str[char]
          result << guess[char]
        else
          result << "-"
        end
      char += 1
      end
    end
    return result
  end

end
