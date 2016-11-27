
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
# 1 -  iterates through the items, deleting any that meet a certain condition
p names
names.each do |person|
   names.delete_if{|person|person[0].downcase =='b'}
end
p names