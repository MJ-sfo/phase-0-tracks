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
end

rank = Ranking.new
repeat = true 

while repeat
  puts "What movie do you want to rank? (type q or Quit to end)"
  movie = gets.chomp.strip
  puts "received '#{movie}'"
  if movie.downcase == "q" or movie.downcase == "quit" 
    puts "End of movie input !"
    repeat = false
    break
  end
  rank.film = movie
  
  puts "Now enter elements of movie, or hit 'Return' if declie to enter. All stars are 0-5, 5 as highest."
  puts "How many stars for #{movie}?"
  film_star = gets.chomp.strip.to_i.floor
  if film_star > 5 or film_star < 0 
    film_star = nil
  end
  puts "you ranked #{movie} with #{film_star} stars."
  