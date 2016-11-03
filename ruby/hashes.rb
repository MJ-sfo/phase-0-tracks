# enter data
interior_des={}
puts "Please enter your information for interior design!"
puts "What is your name?"
interior_des[:name] = gets.chomp
puts "What is your age?"
interior_des[:age] = gets.chomp
puts "How many children do you have?"
interior_des[:kids] = gets.chomp.to_i
puts "Do you want Gaelic-themed decor?"
decore_interior = gets.chomp
decore_interior = decore_interior.upcase[0]
if decore_interior == "Y"
  then interior_des[:Gaelic] = TRUE
elsif decore_interior == "N"
  then interior_des[:Gaelic] = FALSE
else
  interior_des[:Gaelic] = nil
end
puts interior_des

# now checks data
puts "Please list category you wish to change, or just type 'none'."
change = gets.chomp
change = change.strip
if change.upcase != "NONE"  
  puts "What do you want to change #{change} to?"
  interior_des[change.to_sym] = gets.chomp  
end
puts interior_des

