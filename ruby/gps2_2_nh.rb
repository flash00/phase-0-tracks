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
def create_list(groceries, list)
  groceries.split(" ").each { |item| list[item] = 0 }
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
  add_item(list, item, quantity)
end

def print_list(list)
  list.each { |item, quantity| puts "There are #{quantity} #{item} on our list." }
end

p create_list(groceries, list)
p add_item(list, "banana", 3)
p remove_item(list, "banana")
p update_quantity(list, "apples", 16)
print_list(list)

=begin
REFLECT
What did you learn about pseudocode from working on this challenge?
When done correctly, pseudocode can speed up the flow of coding. Including input and output is new for me and was especially helpful.

What are the tradeoffs of using arrays and hashes for this challenge? Arrays are for lists when order is important. A hash is for pairs or linked information. Since the data structure that best fit this challenge was and item tied to a quantity (aka a key value pair), the hash was best.

What does a method return?
A method returns the last evaluated item - puts and print both output to the console and return nil whereas p will both output and return the value.

What kind of things can you pass into methods as arguments?
Any object, including another method, as long as it satisfies the values called form in the parameters.

How can you pass information between methods?
By creating a variable of the method call in the driver code and using that variable to pass the information.

What concepts were solidified in this challenge, and what concepts are still confusing? I need more practice working with hashes and DRYing up my code. Though I have a ways to go, I understand refactoring better.
=end