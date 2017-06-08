library = {

  childrens:{
    floors: [1, 4],
    num_books: 600,
    most_popular:{
      title: "The Snowy Day",
      author: ["Ezra", "Jack", "Keats"]
    },
  },

  fiction: {
    floors: [2, 3],
    num_books: 1000,
    most_popular:{
      title: "The Catcher in the Rye",
      author: ["J." "D." "Salinger"]
    },
  },

  computer_science:{
    floors: [3, 4],
    num_books: 500,
    most_popular:{
      title: "Learning to Program",
      author: ["Chris", "Pine"]
    },
  },

  cooking:{
    floors: [3, 4],
    num_books: 350,
    most_popular:{
      title: "The Joy of Cooking",
      author: ["Irma", "S.", "Rombauer"]
    },
  },

  gardening:{
    floors: [2, 3],
    num_books: 150,
    most_popular:{
      title: "The Drunken Botanist",
      author: ["Amy", "Stewart"]
    },
  }

}
puts "Who wrote The Joy of Cooking?"
p library[:cooking][:most_popular][:author][0..2]

puts "Learning to Program all caps."
p library[:computer_science][:most_popular][:title].upcase

puts "number of books in library"
p library[:childrens][:num_books].to_i + library[:fiction][:num_books].to_i + library[:computer_science][:num_books].to_i + library[:cooking][:num_books].to_i + library[:gardening][:num_books].to_i



