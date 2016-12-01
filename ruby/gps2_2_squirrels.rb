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
# method - udate.  paramaeter item, quantity
# make key = new quantity
# # input:
# # steps:
# # output:

# # Method to print a list and make it look pretty
# hash.each do loop
#   print each key, quanity in nice line
# # input:
# steps:
# output:

def creat_list(text_list)
  hash ={}
  list_array = text_list.split(' ') 
  
  list_array.each do |item|
    p item
    hash[item] = 1
  end
  return hash
end
grocery_list ="oranges apples bannanas steak"
hash = creat_list(grocery_list)
puts "our hash is: #{hash}"

def add_newitem(list, newitem,  quantity = 1)
  new_hash = list
  new_hash[newitem] = quantity
  return new_hash
end
 hash = add_newitem(hash, "cereal")
 puts hash

def remove_item(hash, what_remove)
  new_hash= hash
  new_hash.delete(what_remove)
  return new_hash
end
hash = remove_item(hash, "apples")
puts "new list is : #{hash}"