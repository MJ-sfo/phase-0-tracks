# Write a Ruby program 
# that uses persistent data to make your life better

# fav films for netflix or else?
# can enter actor, director, name of film, Genre, what avoid
# looks at new movies, suggest what you will like
# enter examples 
# each column add up to five stars
# if column has more than one element, take average for that column
#   take ave of columns included, ignore blank columns
#   so database with five columns, plus five columns of stars

# when ask for new movie, with input can give advise based on previous average
#   that searches each info given, looks up that average, then gives matched average
#   
# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("movies.db")

# a fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS movie_history(
    id INTEGER PRIMARY KEY,
    actor VARCHAR(255),
    actor_star INT,
    director VARCHAR(255),
    director_star INT,
    film VARCHAR(255),
    film_star INT,
    genre VARCHAR(255),
    genre_star INT,
    avoid VARCHAR(255),
    avoid_star INT,
    ave_star INT
  )
SQL

# create a movies table (if it's not there already)
db.execute(create_table_cmd)

# psudocode
# ask if want to input into movie_history
# if so, loop through questions.  actor, genre, and avoid can have multiple entries
#   for each, ask number stars
#   can skip question
#   put average for each column and total ave at last column

# ask if want to check a new movie
# loop through same qustions - don't need stars
# compares with history of each entry, comes up with total ave stars.  

class Ranking
  attr_accessor :actor, :actor_star, :director, :director_star, :film, :film_star, :genre, :genre_star
  def initialize
    @actor =""
    @actor_star 
    @director = ""
    @director_star
    @film = ""
    @film_star
    @genre = ""
    @genre_star
  end
  
  def output
    puts "the inputed data is: #{@actor}, #{@director}, #{@film}, #{@film_star}, #{@genre}. "
  end
end

rank = Ranking.new
repeat = true 

while repeat
  puts "What film do you want to rank? (type q or Quit to end)"
  film = gets.chomp.strip
  puts "received '#{film}'"
  if film.downcase == "q" or film.downcase == "quit" 
    puts "End of movie input !"
    repeat = false
    break
  end
  rank.film = film
   
  
  puts "How many stars for #{film}? In-between 0-5, 5 as highest "
  film_star = gets.chomp.strip.to_i.floor
  if film_star <= 5 and film_star >= 0 
    film_star
  else
    film_star = nil
  end
  puts "you ranked #{film} with #{film_star} stars."
  # puts "the film_star class is: '#{film_star.class}'"
  rank.film_star = film_star
  
  puts "Now enter elements of film, or hit 'Return' if decline to enter."
  p "-"*20
  puts "Who was the main actor?"
  actor = gets.chomp.strip
  rank.actor = actor
  # puts "the actor class is: '#{actor.class}'"
  if actor == ""
    rank.actor_star = nil
  else
    rank.actor_star = film_star
  end
  
  puts "Who was the director?"
  director = gets.chomp.strip
  rank.director = director
  if director == ""
    rank.director_star = nil
  else
    rank.director_star = film_star
  end 
  
  puts "What was the movie genre?"
  genre = gets.chomp.strip
  rank.genre = genre
  if genre == ""
    rank.genre_star = nil
  else
    rank.genre_star = film_star
  end 
  p "-"*20
  rank.output
end 
  