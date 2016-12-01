# created new feature branch for GPS 2.2 - Ruby project.
# created a new file called gps2_2_squirrels.rb
# pulling request to my repository, then I will merge it.

# Release 0: Pseudocode
# create hash  - grocery list
# push new item
# change quantities
# print list - use each loop make look nice.

# Method to create a list
# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# create method, takes in one string of multi-food items
# break into array
# push elements of array  into hash, each paired with number one
# return hash - so can be read by oother methods
# # steps: 
#   # [fill in any steps here]
#   # set default quantity
#   # print the list to the console [can you use one of your other methods here?]
# # output: [what data type goes here, array or hash?]

# # Method to add an item to a list
# method add - paramater of new food item, quantity
# push into new line of hash
# # input: item name and optional quantity
# # steps:
# # output:

# # Method to remove an item from the list
# method -delete
# just delete named key from hash
# # input:
# # steps:
# # output:

# # Method to update the quantity of an item
# method - update.  parameter item, quantity
# make key = new quantity
# # input:
# # steps:
# # output:

# # Method to print a list and make it look pretty
# hash.each do loop
#   print each key, quantity in nice line
# # input:
# steps:
# output:

def creat_list(text_list)
  hash ={}  
  text_list.split(' ').each do |item|
    p item
    hash[item] = 1
  end
  return hash
end

def add_newitem(list, newitem,  quantity = 1)
  list[newitem] = quantity
  return list
end
def update(hash, whatremove, quantity)    # similar to add_newitems
  hash[whatremove] = quantity
  return hash
end

def remove_item(hash, what_remove)
  hash.delete(what_remove)
  return hash
end


def to_print(hash)
  hash.each do |key, value|
    puts "Please remember to buy #{value} number of #{key}."
  end
end

grocery_list ="oranges apples bananas steak"
hash = creat_list(grocery_list)
puts "our hash is: #{hash}"

hash = add_newitem(hash, "cereal")
puts hash

hash = remove_item(hash, "apples")
puts "new list is : #{hash}"

hash = update(hash, "oranges", 10 )
puts "updated list is #{hash}"

to_print(hash)

# Release 4: Reflect
# What did you learn about pseudocode from working on this challenge?
# What are the tradeoffs of using arrays and hashes for this challenge?
# What does a method return?
# What kind of things can you pass into methods as arguments?
# How can you pass information between methods?
# What concepts were solidified in this challenge, and what concepts are still confusing?