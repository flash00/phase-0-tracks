module Shout
  def self.yell_angrily(words)
    words + ". Bah!!!" + " :("
  end
end

module Shout
  def self.yelling_happily(words)
    words + ". Hooray!!!" + " :)"
  end
end

puts Shout.yelling_happily("Ice cream, pizza, cookies")
puts Shout.yell_angrily("Taxes, pollution, traffic")

# module Shout
#   def yell_angrily(words)
#     p words + "!!!" + " :("
#   end

#   def yell_happily(words)
#     p words + "!!!" + " :)"
#   end
# end

# class Angry_otter
#   include Shout
# end

# class Angry_chihuahua
#   include Shout
# end

# angry_otter = Angry_otter.new
# angry_otter.yell_angrily("We hate sharks")
# angry_otter.yell_happily("We love abolone and crabs")

# angry_chihuahua = Angry_chihuahua.new
# angry_chihuahua.yell_angrily("We hate big dogs")
# angry_chihuahua.yell_happily("We love walkies")
