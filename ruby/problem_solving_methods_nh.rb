def search_array(array, integer)
  index = 0
    array.each {|num|
      if num == integer
       p array[index]
      end
    }
end

arr = [42, 89, 23, 1]
search_array(arr, 1)