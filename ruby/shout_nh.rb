# module Shout
#   def self.yell_angrily(words)
#     words + " Bah!!!" + " :("
#   end
# end

# module Shout
#   def self.yelling_happily(words)
#     words + " Hooray!!!" + " :)"
#   end
# end

# puts Shout.yelling_happily("Ice cream, pizza, cookies.")
# puts Shout.yell_angrily("Taxes, pollution, traffic.")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Angry_Otter
  include Shout
end

class Angry_Chihuahua
  include Shout
end

angry_otter = Angry_Otter.new
puts angry_otter.yell_angrily("We hate sharks. Boo-hoo")
puts angry_otter.yelling_happily("We love abolone. Yay")

angry_chihuahua = Angry_Chihuahua.new
puts angry_chihuahua.yell_angrily("We hate big dogs. Ick")
puts angry_chihuahua.yelling_happily("We love walkies. Yay")
