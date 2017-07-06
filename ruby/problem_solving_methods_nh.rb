# Write a method that takes two arguments: an array of numbers and a number. It returns the index of the number if it appears in the array.
# Step 1: Set up way to loop through array to compare array items with number.
# Step 2: Set up empty array to push numbers to during search. It will serve as the counter for the index place.
# Step 3: Use length - 1 for index position (index starts at 0 but length starts at 1).

# def search_array(array, integer)
#   new_array = []
#     array.each {|num| new_array << num
#       if num == integer
#        p new_array.length-1
#       end
#     }
#     p nil
# end

# arr = [42, 89, 23, 1]
# search_array(arr, 42)



# **************
# Write method which accepts a number for an argument and returns and array of generated Fibonacci terms.

# Step 1: Initiate array with first two provided Fibonacci terms and variable placeholders for two terms.
# Step 2: Set up loop to produce Fibonacci terms until reach given amount.
# Step 3: Return array with stored terms.

# def fibonacci(num)
#   fibi_array = [0, 1]
#   num1 = 0
#   num2 = 1
#   count = 3
#   while count <= num
#     fib_current = num1 + num2
#     fibi_array << fib_current
#     num1 = num2
#     num2 = fib_current
#     count += 1
#   end
#   p fibi_array
# end

# p fibonacci(100)[-1] == 218922995834555169026



# *****************
# Write a bubble_sort method that takes an array of numbers and uses an algorithm to sort them.
# Step 1: Set up a loop to compare the numbers by size.
# Step 2: Compare a number with the number next to it. If the second one is smaller, swap them.
# Step 3: Return the sorted array.

def bubble_sort(array)
  array.each_index do |first|
  array.each_index do |second|
    if array[first] < array[second]
      array[first], array[second] = array[second], array[first]
    end
  end
  end
end

p bubble_sort([5, 9, 6, 1])
p bubble_sort([7, 9, 4, 1])
p bubble_sort([3,1, 2])
