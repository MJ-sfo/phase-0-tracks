family = {
  aunt: ['Nancy','Eileen', 'Katie'],
  uncle: ['Jim', 'Bob', dick: {
                                polla: "Twenty dogs", 
                                karen: ["Three dogs", 'two kids']
                                }], 
  art: "two kids"
}
puts family
puts "I have three aunts: #{family[:aunt]}"
puts "My uncle #{family.key("two kids")} has #{family[:art]}."
p "--------------------"
puts family[:uncle]
p "--------------------"
puts "My Uncle Dick has the largest family: #{family[:uncle][2]}"
family[:aunt]
p "--------------------"
family[:aunt].reverse_each {|x| print x, ",  "}