# store input as a string
def encrypt(word)
  vari = word
  count = 0
# cycle through string using .next on each

 while count < vari.length
    if vari[count] == "z"
      then vari[count] = "a"
      count += 1
    else
    vari[count]= vari[count].next
    count += 1
   end
  end
  return vari
#  p vari
end

#Store input as a string
def decrypt(word)
  vari = word
  count = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while count < vari.length
    position = 0
    vari = word

#Determine where in alphabet is is using .index
    position = alphabet.index(vari[count])
    position -= 1
    vari[count] = alphabet[position]
    count += 1
  end
return vari
#p vari
end
#Set letter equal to itself -1 in alphabet
#encrypt("hello")
#decrypt("ifmmp")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")
#decrypt(encrypt("swordfish"))
# works because: swordfish is modified by first dec "encrypt", which is then modified by second def "decrypt"

puts "secret agent - would you like to decrypt or encrypt a password?"
secrete=gets.chomp
puts " what is your password?"
password=gets.chomp
answer=""

if (secrete=="encrypt")
  answer=encrypt(password)
  puts answer
elsif (secrete=="decrypt")
  answer=decrypt(password)
  puts (answer)
else 
  puts "does not make sense"
end
