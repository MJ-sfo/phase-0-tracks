p "What is hamster's name?"
hamnm = gets.chomp
p "so the hamster's name is #{hamnm}."
p "how deeply do you sleep, scale one to ten?"
vollev = gets.chomp.to_i
p "OK, I will put down #{vollev}."
p "what color of hamster do you want?"
hamcol = gets.chomp
p "A #{hamcol} hamster."
p "is the hamster is a good candidate for adoption?"
adopt = gets.chomp
p "so the hamster is a #{hamnm} candidate."
p "how old is hamster?"
age=gets.chomp

if age = ""
  age=nil
  p "so you aren't sure of the age?"
elsif condition
  p "OK, the hamster is #{age} years old."
  age=age.to_i
end

