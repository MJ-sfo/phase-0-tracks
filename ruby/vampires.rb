puts "how many employees will be processed today?"
proces=gets.chomp
proces=proces.to_i
while proces>=1

    # survey  start process
  puts "What is your name?"
  newemp=gets.chomp
  puts "How old are you?"
  age = gets.chomp
  age=age.to_i
  puts  "What year were you born? "
  yearB =gets.chomp
  yearB = yearB.to_i 
  puts "Our company cafeteria serves garlic bread. Should we order some for you? "
  garlic = gets.chomp
  puts  "Would you like to enroll in the company’s health insurance?"
  health = gets.chomp
  
  # Search for: “Sunshine”
  allergy="dust"
  while allergy != "Sunshine"
    puts "name any allergies, one at a time. you may type 'done' when finished"
    allergy = gets.chomp
    allergy=allergy.capitalize
    if allergy == "Sunshine"
      break
    elsif  allergy == "Done"
      break
    else
      allergy="dust"
    end
  end
  
  # Search for:  “Probably a vampire.”
  if (newemp == "Drake Kula" or newemp == "Tu Fang")
    puts "Definitely a vampire."
  else     
      # test for correct age
      if (2016-yearB==age or 2016-yearB-1==age)      
          # employee got their age right
          if (garlic[0] =="y" or garlic[0] == "Y")
             puts "Probably not a vampire."
          elsif (health[0]=="y" or health[0]=="Y")
              puts "Probably not a vampire."
          else
              puts "Results inconclusive."
          end
          # but if employee got their age wrong
      elsif ((garlic[0] =="n" or garlic[0] == "N") and (health[0]=="n" or health[0]=="N"))
          # all signs show vampire
        puts "Almost certainly a vampire."
  
      elsif (garlic[0] =="n" or garlic[0] == "N")
           puts "Probably a vampire."
      elsif (health[0]=="n" or health[0]=="N")
           puts "Probably a vampire."
      else 
        # age wrong but likes garlic and health plan
        puts "Results inconclusive."
      end
   end
 
#end of process for this employee
  proces = proces-1
end  
# proces - "how many employees will be processed today?"
puts "processed #{proces+1} number of employees today"
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
 # tagging my advisor Andrew larson @omgmakeme