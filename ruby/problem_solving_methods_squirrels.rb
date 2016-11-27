# Release 0: Implement a Simple Search
# define method - takes  array of integers and an integer to search for. 
# set var to nil, index to 0
# run loop on array - compare each item with integer
# if match, make integer = var
#   return val of var
  
def find_integer(array_in, int_to_find)
  var = nil
  array_in.each do |index|
    if array_in[index] == int_to_find
      var = index
    end
  end

  unless var.nil?
    return var
  else
    puts "integer not in array, returning value 'nil'."
    return var
  end
  # return var
end

use_this_array = [1,5,17,25]
puts "we found the integer at #{find_integer(use_this_array, 5 )} spot in array"