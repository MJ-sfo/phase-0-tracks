# Release 0: Implement a Simple Search
def search_array(arr, srch_array)
  indx = 0 
  while indx < arr.length
    if arr[indx] == srch_array
      puts "the index of #{srch_array} is #{indx}."
      break
    end
    indx += 1 
  end
end
arr_test = [42, 89, 23, 5]
search_array(arr_test, 23)

# Release 1: Calculate Fibonacci Numbers
def fib(input)
  output = []
  if input == 1 
    then output = [0]
  elsif input == 2 
    then output = [0, 1]
  else
    output = [0, 1]
    loop = 2
    while loop < input
      output = output.push(output[loop-2] + output[loop - 1])
      loop += 1
    end
  end
  p output
end

p "What Fibonacci number do you want?"
fib_num = gets.chomp.to_i 
if fib_num < 1 then
  p "must be a positive Integer."
else
  fib_num = (fib_num / 1) 
  fib(fib_num)
end

