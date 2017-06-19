class Wordgame
  def initialize(str)
    @str = str
    @guess_count = 0
    @limit = 0
  end

  def get_length(str)
    @str.length.to_i
  end

  def guess_limit(str)
    @limit = @str.length.to_i * 2
  end

  def met_limit
    if @limit == @guess_count
        print "You cannot defeat Word-Mojo!"
        return
    end
  end

def compare_guess(guess, str)
  @guess_count = 0
  index = 0
  result = ""
  while index < @str.length
    guess.each_char do
      if guess[index] == str[index]
        result << guess[index]
      else
        result << "-"
      end
    @guess_count += 1
    index += 1
    end
  end
  return result
end

end
