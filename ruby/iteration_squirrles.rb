
# Release 1: Use each, map, and map!Release 1: Use each, map, and 
# map!Release 1: Use each, map, and map!

sublings = ["Anne", "Jen", "Tim"]
family = {
  aunt: ['Nancy','Eileen', 'Katie'],
  uncle: ['Jim', 'Bob','Dick'],
  dick: {polla: "Twenty dogs", karen: ["Three dogs", 'two kids']},
  art: "two kids"
}
sublings.each do |item|
  # puts "Family member #{sublings[item]}." #- doesn't work
  puts "Array Family member #{item}."
end

family.each do |item|
  # puts "Family member #{sublings[item]}." #- doesn't work
  puts "hash Family member #{item}."
end

family.each do |key, value|
  puts "Family member #{key} also has #{value}."
end

puts "----------------------"
sublings.map do |item|
    puts "Array Family member #{item}."
  item.next     #  same as sublings = sublings.next
end
puts "After .map call: #{sublings}"

sublings.map! do |item|
    puts "Array Family member #{item}."
  item.next    
end
puts "After .map! call: #{sublings}"
puts sublings
puts "----------------------"
family.map do |item|
  puts "Array Family member #{item}."
  # item.next    - this works on array but not on hash
end
puts family

# Release 2: Use the Documentation
names = ['Adam','Bernie','Charlie','Dave']
attribues = {
  alice: 'tall',
  bob: 'fat',
  cathy: 'guitarist',
  donnald: 'winner'
}
# 1 -  iterates through the items, deleting any that meet a certain condition
p names
names.each do |person|
   names.delete_if{|person|person[0].downcase =='b'}
end
p names
p attribues
attribues.each do |key, value|
  attribues.delete_if{|key|key.to_s[0].downcase =='b'}
end
p attribues

# 2 -  filters a data structure for only items that do satisfy a certain condition
p names
names.each do |person|
   names.delete_if{|person|person[0].downcase < 'c'}
end
p names

p attribues
attribues.each do |key, value|
  attribues.delete_if{|key|key.to_s[0].downcase <'b'}
end
p attribues

# 3 - different method that filters a data structure
p names
names.map do |person|
   names.delete_if{|person|person[0].downcase < 'c'}
end
p names

p attribues
attribues.map do |key, value|
  attribues.delete_if{|key|key.to_s[0].downcase <'b'}
end
p attribues

#4 - method that will remove items from a data structure until the condition in the block evaluates to false
p names
less_names = names.drop_while { |i| i[0].downcase  < 'c' } 
p less_names
p "------------------"
p attribues
less_attribues = attribues.drop_while { |i, value| i[0].downcase  < 'c' } 
p less_attribues