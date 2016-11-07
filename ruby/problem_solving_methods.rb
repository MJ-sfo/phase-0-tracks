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

# Release 2: Sort an Array
# 1. Choose a simple sorting algorithm to learn about. Bubble sort or insertion 
# sort are good ones for beginners, but you're welcome to be more adventurous.
# I will learn about Bubble algorithms (I wasn't able to get a partner.)

# 2. Form a conceptual understanding of how the algorithm works. What helps you 
# grasp it? Do visualizations help? How can you find the right materials for yourself?
# I googled Bubble algorithms, then looked at different webpages - was it relevant? 
# Too advanced for my level of learning?  

# 3. Notice your emotional state as you tackle this algorithm: do you feel frustrated, 
# underqualified, stupid, or overwhelmed? Or is it more like excitement and curiosity? 
# How do you think these feelings affect your ability to learn?
# I don't feel unqualified while starting, as I expect to not know the material
# yet, but hope to learn.  More like "let's do the next part of assignment."

# Pseudocode 
# set a loop
# compare two elements of array
# if first is larger, switch elements

def bubble(array)
  n = array.length 
  loop do
    finished = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1]=array[i+1], array[i]
        finished = true
      end     # if end
    end        # times do end
    break if not finished   # finished all array - need to start over?
    
  end         # loop do end
  array
end           # def end

a = [1, 6, 2, 16, 2]
p bubble(a)
