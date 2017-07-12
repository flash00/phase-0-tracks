# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split input string into array
  # push array elements into hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: push item name to list with quantity
# output: new list with updated item quantity

# Method to remove an item from the list
# input: list, item name to remove
# steps: delete item from list
# output: new list with item deleted

# Method to update the quantity of an item
# input: list, item, new quantity
# steps: set new quantity for item in list
# output: new list with updated quantity for item

# Method to print a list and make it look pretty
# input: our list with item names and quantities
# steps: print out a sentence for each item with its quantity
# output: list of sentences with item name and quantity

list = {}
groceries = "carrots apples cereal pizza"
def create_list(string, list)
  items = string.split(" ")
  items.each do |item|
    list[item] = 0
  end
  list
end

def add_item(list, item, quantity= 0)
  list[item] = quantity
  list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_quantity(list, item, quantity)
  list[item] = quantity
  list
end

def print_list(list)
  list.each do |item, quantity|
    puts "There are #{quantity} #{item} on our list."
  end
end

p create_list(groceries, list)
p add_item(list, "banana", 3)
p remove_item(list, "banana")
p update_quantity(list, "apples", 16)
print_list(list)