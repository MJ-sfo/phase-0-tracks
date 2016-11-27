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

# Release 1: Calculate Fibonacci Numbers
# define method - take one Number
# reduce number to floor integer
# if less than 0, send error msg
#   integer 0,1,2 return prest array
#   loop - three through length array - push new item, sum of last two items of array
#   return final array 

def fibonacci(lngth)
  lngth = lngth.to_i.floor
  puts "the lenght of array is: #{lngth}"
  fib_array = []
  if lngth < 0 
    puts "Needs a non-negative number"
  elsif lngth == 1
    fib_array = [0]
  else # lngth == 2
    fib_array = [0, 1]
    index = 3
    while index <= lngth
      fib_array.push(fib_array[index-3] + fib_array[index-2])
      index +=1 
    end
  end
  return fib_array
end

puts "The array is: #{fibonacci(100)}"
# 100th position is: 218922995834555169026

# Release 2: Sort an Array
# 1 - Choose a simple sorting algorithm to learn about
# sort numbers, by bubble-method
# 2 - Form a conceptual understanding of how the algorithm works.
# should be able to turn number into string, sort by lenght of string (break string into array of characters? )
# 3- Notice your emotional state as you tackle this algorithm:
# one fustrating part of tacking anything in programing is trying to self-digagnose my own emotional state.  I've got enough work to do in finding a solution.  Let's get 'er done !
# 4 - Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. 
# loop through array 
# compare one element with next, switch if second is smaller
# repeat array until no changes made, then quit
# 5 - Implement the sorting method in Ruby.
