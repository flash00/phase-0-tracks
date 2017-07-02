# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p"iNvEsTiGaTiOn".swapcase!
p"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p"zom".insert(1,"o")
p"zom".gsub("o", "oo")
# => “zoom”

p"enhance".center(15)
p"enhance".insert(0,"    ").insert(-1, "    ")
p"enhance".rjust(11).ljust(15)
# => "    enhance    "

p"Stop! You'/re under arrest!".upcase
p"Stop! You'/re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

p"the usual".concat(" suspects")
p "the usual"<<" suspects"
p" suspects".insert(0, "the usual")
#=> "the usual suspects"

p"The case of the disappearing last letter".chop
p"The case of the disappearing last letter".chop!
p"The case of the disappearing last letter"[0..-2]
# => "The case of the disappearing last lette"

p"The mystery of the missing first letter".byteslice(1,38)
p"The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

p"Elementary,    my   dear        Watson!".squeeze
p"Elementary,    my   dear        Watson!".gsub("   ", " ").gsub("  ", " ").gsub("  ", " ")
# => "Elementary, my dear Watson!"

p "z".each_byte {|char| p char}
p"z".bytes.join.to_i
p"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?) It is the ASCII, or American Standard Code for Information Interchange, representation for the alphabet character "z".

p"How many times does the letter 'a' appear in this string?".scan("a").length
p"How many times does the letter 'a' appear in this string?".count("a")
# => 4