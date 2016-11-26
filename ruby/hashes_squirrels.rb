# pseudocode
# create a hash
# loop through the hash
# ask user for name for input
# convert, if necessary, input into correct data type, push into hash
# stop loop, print hash
# ask user for any key the paired value the user wants the value changed
# convert input string for key into symbol for key.
# change new input for that key

# when user marks "none" stop, print updated hash
# client.each do |key, data|    # this prints VALUES
#   puts "What do you wish to enter for #{client[key]}?"
# end
client = {
  name: "",
  age:  0,
  number_kids: 0,
  decor: "",
  paid_advanced: false
}
# client.each do |key, data|    # this prints VALUES
#   puts "What do you wish to enter for #{client[key]}?"
# end
input = ""
for key in client.keys.sort
  if key.to_s == "paid_advanced"
    puts "Will you pay for this in advanced (y/n)?"
    input = gets.chomp.strip.downcase
    if input[0] == "y"
      client[:key] = true
    end
  else
    puts "What do you wish to enter for #{(key.inspect).reverse.chop.reverse }?"  # .reverse.chop.reverse is to remove colon
    input = gets.chomp
    p input
    if key.to_s == "number_kids" or key.to_s == "age"
      client[key] = input.to_i
    else
      client[key] = input
    end
  end
end
puts "#{client}"

finish = false
input_update = ""
while finish == false
  puts "Which data would you like to update? (type 'none' if satisfied)"
  update = gets.chomp.strip.downcase
  if update == "none" or update == ""
    finish = true
  else
    puts "What is the new value for #{update}?"
    input_update = gets.chomp.strip
    if update == "paid_advanced"
      if input_update[0] == "y" or input_update[0] == "t"
        client[update.to_sym] = true
      else
        client[update.to_sym] = false
      end
    elsif update  == "number_kids" or update  ==  "age"
      client[update.to_sym] = input_update.to_i
    else
      client[update.to_sym] = input_update
    end
  end
end
puts "#{client}"