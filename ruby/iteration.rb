def say_hello(a, b)
    puts "hello my friends #{a} and #{b}!"
    puts "before running block"
    yield(a,b)
    yield("Jack")
    puts "after running block"
end

say_hello("Dave", "Sam"){|x,y| puts "Have a great day  #{x} #{y}"}


def change_book
    books = ["Pride & Prejudice", "Da vinci code", "I Was Told There'd Be Cake ", "To Kill a Mockingbird ", "The Man Without Qualities " ]
    books.each{|book| puts "My favourite book is #{book}" }
end    

p change_book



def change_book
    books = ["Pride & Prejudice", "Da vinci code", "I Was Told There'd Be Cake ", "To Kill a Mockingbird ", "The Man Without Qualities " ]
    puts "using each"
    books.each{|book| puts "My favourite book is #{book}" }
    puts "changes last letter in Book Title, using map"
    books.map!{|book| puts "My favourite book is #{book.next}" }
    
end
    
p change_book


def city
    city_fun = {
    pretty: "San Francisco",
    high: "Denver",
    wet: "London",
    hot: "Lome",
    }
    
    puts "using each"
    city_fun.each{|condition, city| puts "I am from #{city} which is very #{condition} " }
    
    puts "using map"
    city_fun.map{|condition, city| puts "I am from #{city} which is very #{condition}" }
    
    
end

p city


#A method that iterates through the items, 
# deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

def delete_method
    language = ["ruby", "C"]
    puts "Implementing Array"
    print language
    puts
    language.delete_if { |lang| lang.start_with?'r' }
    print language
    puts
    puts "Implementing hash"
    language = {"lang1" =>"Phython", "lang2" => "Javascript"}
    print language
    puts
    language.delete_if { |num, language| language == "Phython" }
    print language
end

delete_method

A method that iterates through the items, 
# deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).



def delete_method
    language = ["ruby", "C"]
    puts "Implementing Array"
    print language
    puts
    language.delete_if { |lang| lang.start_with?'r' }
    print language
    puts
    puts "Implementing hash"
    language = {"lang1" =>"Phython", "lang2" => "Javascript"}
    print language
    puts
    language.delete_if { |num, language| language == "Phython" }
    print language
    puts
end


delete_method



# A method that filters a data structure for only items 
# that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

def filter_method
puts  "Filter Method- array"
array = [ 3, 4, 7, 12 ]
result = array.select do |elem|
  elem > 5
end
puts result
puts  "Filter Method- hash"
hash = { num1: 2, num2: 3, num3: 5, num4: 7 }
result = hash.select do |num, prime_num|
  prime_num >= 5
end
puts result
end

filter_method

#A different method that filters a data structure 
#for only items satisfying a certain condition -- Ruby offers several options!

def filter_new_method
    puts  "Filter Method- array"
    a = [10,20,30,40,50]
    new_num = a.find_all do|n|
        n > 15
    end
    print new_num
    puts  "Filter Method- hash \n"
    a = {ten: 10,twenty: 20,thirty: 30,fourty: 40,five: 50}
    new_num = a.find_all do|num, value|
        value > 15
    end
    print new_num

end

filter_new_method




#A method that will remove items from a data structure until the condition in the block evaluates to false,
#then stops (you may not find a perfectly working option for the hash, and that's okay).

# delete elements of array, until meets a number that is even.  then stops
  
def until_method
    puts "Implementing Array"
    test_num = [1, 13, 15, 20, 21, 50]
    result = test_num.drop_while { |i| i%2 ==1 }
    p result
    puts "Implementing hash"
    test_num_hash = {one: 1, two: 2, three: 3, four: 4, five:5 }
    result = test_num_hash.drop_while { |key, value| value%2==1 }
    p result
end
until_method
   