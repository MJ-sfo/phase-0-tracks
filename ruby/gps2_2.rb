# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
# define method that inputs parameter of list (a text)

# break list into array of seperate item
# create hash
# push each item into hash - each item is a key
# 
  # set default quantity
  #quantity of item
  # print the list to the console [can you use one of your other methods here?]
# "puts" etc
# output: [what data type goes here, array or hash?]
# inside method - print each has line - key and pair

def create_list(input)
  input = input.split
  list={ }  
  input.each do |index|
    list[index] = 1
  end
  p list
  return list
end


# Method to add an item to a list
 # input: list, item name, and optional quantity
 # steps:
 # output:

def add_to_list(list_hash, food, quantity=1)
  list_hash[food] = quantity
end


# Method to remove an item from the list
 # input: we input 2 things a hash and a key
 # steps: define a method and delete 
 # output: a changed hash without 1 key 

def delete(list_hash,food)
    list_hash.delete(food)
end


# Method to update the the quantity of an item
 # input: we input 3 thing a hash, a food and a quantity
 # steps: define a method and change the quantity 
 # output: a change hash food with a different quantity

def change(list_hash, food, quantity=1)
    list_hash[food] = quantity
end


# Method to print a list and make it look pretty
 # input: we need only a hash to print
 # steps: we need to define the method, and to take each of the hash print it
 # output: a good looking list of items 


def print1(list_hash)
  puts "-----------------"
  list_hash.each {|key, value| puts "We have: #{key} = #{value}" }
  puts "-----------------"
end

# Interface 

puts "This is a grocory list - program"
input="Lemonade Tomatoes Onions Ice_Cream"

grocory_list = create_list(input)

change(grocory_list, "Lemonade", 2)
change(grocory_list, "Tomatoes", 3)
change(grocory_list, "Onions", 1)
change(grocory_list, "Ice_Cream", 4)
delete(grocory_list,"Lemonade")
change(grocory_list, "Ice_Cream", 1)
print1(grocory_list)


=begin
Create a new list
Add the following items to your list
Lemonade, qty: 2
Tomatoes, qty: 3
Onions, qty: 1
Ice Cream, qty: 4
Remove the Lemonade from your list
Update the Ice Cream quantity to 1
Print out your list (Is this readable and nice looking)?
=end
#   p "------------"
#  list_hash.each_pair do |k,v| #k and v class as in hash
#    p "#{k}=#{v}"
#
#  end 
#end

#print1(new_hash)

#p new_hash