def search_array(array, integer)
  new_array = []
    array.each {|num| new_array << num
      if num == integer
       p new_array.length-1
      end
    }
end

arr = [42, 89, 23, 1]
search_array(arr, 1)