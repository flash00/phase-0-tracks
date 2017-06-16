# Method to create a list
# input: string of groceries separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create grocery_list hash using hash.new  or curly braces
  # create array and populate with grocery items
  # iterate through each item using []
  # set default quantity using []
  # print the list to the console [can you use one of your other methods here? - pretty list?]
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
# steps: create descriptive string including data (items and quantity) so it is meaningful for user
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

list = list_create("carrots apples cereal pizza")

p add_item(list, "lemonade", 2)
p add_item(list, "tomatoes", 3)
p add_item(list, "onions", 1)
p add_item(list, "ice cream", 4)

p remove_item(list, "lemonade")

p update_item(list, "ice cream", 1)
p update_item(list, "pizza", 3)

pretty_list(list)

