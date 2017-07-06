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

def fib(num)
  fibis = [0, 1]
  num1 = 0
  num2 = 1
  count = 3
  while count <= num
    fib_current = num1 + num2
    fibis << fib_current
    num1 = num2
    num2 = fib_current
    count += 1
  end
  p fibis
end

  fib(100)

