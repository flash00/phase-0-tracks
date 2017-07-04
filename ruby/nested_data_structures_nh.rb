refrigerator = {

  top_shelf: ["milk",
      "orange juice",
      "chai",
      "kombucha"],

  middle_shelf: ["cherry jam",
    "la croix",
     "almond butter",
     "blueberries",
     "rasberries",
     "sliced watermelon"],

  top_drawer: ["moldy cheese",
      "salami",
      "hot dogs",
      "bacon"],

  bottom_drawer: ["kale",
      "bok choy",
      "red pepper",
      "broccolini",
      "dandelion greens",
      "wilted chard"],

  door:{
    top_shelf: ["ketchup", "mustard"],
    mid_shelf: ["soy sauce", "garlic chili sauce"],
    bottom_shelf: ["cava", "rose", "sparkling lemonade"]

  }
}
puts "I'm thirsty. What should I drink?"
p refrigerator[:top_shelf][2..3]

puts "This bok choy needs some spice."
p refrigerator[:door][:mid_shelf][1]

puts "I'm allergic to rasberries. Let's have strawberries instead."
p refrigerator[:middle_shelf][4] = "strawberries"
p refrigerator[:middle_shelf]

puts "Hey, we're out of bread!"
refrigerator[:middle_shelf].push("bread")
p refrigerator[:middle_shelf]



