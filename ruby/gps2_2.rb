# Method to create a list
# input: string of groceries separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create grocery_list hash using hash.new or curly braces
  # create array and populate with grocery items
  # iterate through each item
  # set default quantity using []
  # print the list to the console [can you use one of your other methods here? - maybe pretty list?]
# output: hash

# Method to add an item to a list
# hash[item] = quantity
# input: list, item name, and optional quantity
# steps: key = item value = quantity
# output: hash with new key value pair added

# Method to remove an item from the list
# input: item to remove and list to remove it from
# steps: use key for item to delete from list
# output: new hash without deleted item

# Method to update the quantity of an item
# input: list item and new quantity
# steps: update quantity
# output: new hash with updated quantity

# Method to print a list and make it look pretty
# input: hash
# steps: create descriptive string including data (items and quantity) that is meaningful for user
# output: Grocery list with items and their quantities

def list_create(groceries)
  grocery_list = Hash.new
  new_list = groceries.split(" ")
  new_list.each do |grocery|
    grocery_list[grocery] = 0
  end
  p grocery_list
end

def add_item(list, grocery, quantity= 0)
  list[grocery] = quantity
  list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_item(list, item, quantity)
  list[item] = quantity
  list
end

def pretty_list(list)
  list.each do |item, quantity|
  p "You have #{quantity} #{item}."
  end
end

list = list_create("broccoli kale strawberries pizza")

p add_item(list, "lemonade", 2)
p add_item(list, "tomatoes", 3)
p add_item(list, "onions", 1)
p add_item(list, "ice cream", 4)

p remove_item(list, "lemonade")

p update_item(list, "ice cream", 1)
p update_item(list, "pizza", 3)

pretty_list(list)

=begin
Reflect
What did you learn about pseudocode from working on this challenge?
It is not easy to break down the intermediary steps between human understanding of a task and computer understanding of a task. It's both much simpler and much trickier than I assumed prior to this challenge.
What are the tradeoffs of using arrays and hashes for this challenge?
The hash is a better fit for the challenge because the key-value pair structure is perfect for housing item-quantity data. If we were only iterating through a list an array would be a better tool.
What does a method return?
One single object/value.
What kind of things can you pass into methods as arguments?
Any object including another method that corresponds to the values called for in the parameters.
How can you pass information between methods?
By creating a variable of the method call in the driver code and using that variable to pass the information.
What concepts were solidified in this challenge, and what concepts are still confusing?
Wow, a lot of concepts were clarified, hope they are solidified (but my braining is still working on them). I'm not sure about which "concepts" aren't clear. It's more the nuts and bolts of breaking down the tasks. I need to keep perfecting that. I also want to improve my variable naming skills to keep them clear. Sometimes I confused myself by naming things too similarly. It seems the more methodical you are the better things go. And being methodical is a skill this challenge clarified.
=end