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
client = {
  name: "",
  age:  0,
  number_kids: 0,
  decor: "",
  paid_advanced: false
}
client.each |key, data|
  puts client[:key]
  
end