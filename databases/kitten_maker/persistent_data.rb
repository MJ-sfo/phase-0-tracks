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
$db = SQLite3::Database.new("movies.db")

# a fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS movie_history (
    id INTEGER PRIMARY KEY,
    actor VARCHAR(255),
    actor_star INT,
    director VARCHAR(255),
    director_star INT,
    film VARCHAR(255),
    film_star INT,
    genre VARCHAR(255),
    genre_star INT
  )
SQL

input_into_table_cmd = <<-SQLL
  INSERT INTO movie_history (
  actor, actor_star, director, director_star, film, film_star, genre, genre_star)
  VALUES
  (?, ?, ?, ?, ?, ?, ?, ?
  )
SQLL

# INSERT INTO movies (actor, actor_star, director, director_star, film, film_star, genre, genre_star) VALUES ("Gumdrop", 2, "true");

# create a movies table (if it's not there already)
$db.execute(create_table_cmd)

# psudocode
# ask if want to input into movie_history
# if so, loop through questions.  actor, genre, and avoid can have multiple entries
#   for each, ask number stars
#   can skip question
#   put average for each column and total ave at last column

# ask if want to check a new movie
# loop through same questions - don't need stars
# compares with history of each entry, comes up with total ave stars.  

class Ranking
  attr_accessor :actor, :actor_star, :director, :director_star, :film, :film_star, :genre, :genre_star, :choice
  def initialize
    @actor =""
    @actor_star 
    @director = ""
    @director_star
    @film = ""
    @film_star
    @genre = ""
    @genre_star
    @choice
  end
  
  def choose_genre(find_genre)
    genre_data = $db.execute("SELECT genre, genre_star FROM movie_history WHERE genre = (?)", [find_genre])
    puts "the genre data is: #{genre_data}. "
    num_movies = 0 
    total_ratings = 0
    genre_data.each do |index|
      if index[1] >=0 and index[1] <= 5
        num_movies +=1 
        total_ratings = total_ratings + index[1]
      end
    end
    if num_movies > 0 
      ave = (total_ratings / num_movies)
      puts "You like #{find_genre} with #{ave} stars!"
    else
      puts "you haven't rated any movies that are #{find_genre} !!!"
    end
  end   # end of def
end     # end of class

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
  rank.genre = genre.downcase
  if genre == ""
    rank.genre_star = nil
  else
    rank.genre_star = film_star
  end 
  p "-"*20
  rank.output
  $db.execute(input_into_table_cmd, [rank.actor, rank.actor_star, rank.director, rank.director_star, rank.film, rank.film_star, rank.genre, rank.genre_star])
end 

puts "I can predict how much you will like a new movie from your past experiences."
puts "Enter choice of: 'actor', 'director', or 'genre'"
choice = gets.chomp.strip.downcase
if choice == "actor"
  
elsif choice == "director"

elsif choice == "genre"
  puts "what genre are you looking at?"
  genre = gets.chomp.strip 
  rank.choose_genre(genre)
else
  puts "Sorry, the only choices are: 'actor', 'director', or 'genre'"
end

  