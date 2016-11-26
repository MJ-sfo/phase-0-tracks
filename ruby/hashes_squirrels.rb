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
  end
end
puts "#{client}"

