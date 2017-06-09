# Release 0
##################

arr = [10, 30, 60, 70] # Declare an array to be used in method

# Write a method that takes (a)an array of integers and (b)an integer  to search for.
def search_array(a, b) # Defined method takes two parameters
  flag = false  # Assign flag variable to false
  arr_end = a.length # Assign arr_end variable to array's length
  counter = 0 # Starts at the 0 array index position and will increase by 1 each loop iteration

  until counter == arr_end #loop will continue until this condition is met

  position = arr_end - counter #the current index position

    if a[position] == b #if the integer equals the item at current index position then print position to the console
      p position
      flag = true #reassign variable flag value to true
    elsif a[0] == b #if interger at array[0] equals search integer print array[0]
      p 0
      flag = true #change variable flag value to true
      break # Search complete exit method
    else
    end   # Close if elsif else statement

  counter += 1   # Increase counter by 1 to begin next loop iteration

end

  if flag == false # Print nil to console if flag value equals false
    p "nil"
  else
  end # Close if else statement
end # Close method

#Driver code/user interface requesting integer
puts "enter a value... now:"
response = gets.chomp.to_i #changes input to integer
search_array(arr, response) #calls method


##############################
# Release 1


# add the sum of two integers within an array to the previous integer.
# Push the result into the array
# untill array.length == x


def fib_method(number)

counter = 0
fib_array = [0,1]


#create a loop that breaks down the array into its parts
until counter == number

# if counter is at zero do nothing.

if counter == 0
#else not at zero subtract from fib_array index current counter -1
# add too fib_array index counter
# store the sum of those two numbers into a result variable

else
  result = fib_array[counter-1] + fib_array[counter]
    fib_array << result
end

# add to counter to get to the end of the fib_array loop
counter += 1
end

#strip the last index of the array
fib_array.delete_at(-1)
p fib_array

end

#define user interface for fibanaci
puts "What's your fib number?"
number = gets.chomp.to_i
fib_method(number)

#############################
#Release 2 part 1
# Chose Bubble bubble_sort
#Release 2 part 2

def bubble_sort(array)
  n = array.length

  loop do

    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
     end
    end #total numbers array -1 end
    break if not swapped
  end
    array
end

  a = [1, 4, 1, 3, 4, 1, 3, 3]
  p bubble_sort(a)
