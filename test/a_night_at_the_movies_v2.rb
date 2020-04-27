
movies = [ {name: "Fight Club", year: 1999, imdb_rating: 8.8, synopse: "An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more."},
  {name: "Star Wars IV - A New Hope", year: 1977, imdb_rating: 8.6, synopse: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader."},
  {name: "Eternal Sunshine of the Spotless Mind", year: 2004, imdb_rating: 8.3, synopse: "When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories."}
]
choice = ""

while choice != "exit"

get_names = ->(title) { title[:name] }
names = movies.map(&get_names)

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
puts "-- Type 'exit' to exit"

choice = gets.chomp.downcase

case choice
  when "add"
    puts "Movie?"
    title=gets.chomp
    if names.include?(title)
      movie = movies.select{|a| a[:name] == title}
      puts movie
      puts "That movie already exists! This movie has done in #{movie[:year]}, has a rating of #{movie[:imdb_rating]} and the synopse is: #{movie[:synopse]}."
    else
      puts "Rating?"
      rating=gets.chomp
      rating = rating.to_f
      puts "Year?"
      year=gets.chomp
      year= year.to_i
      puts "Synopse?"
      synopse=gets.chomp
      movies << {name: title, year: year, imdb_rating: rating, synopse: synopse}
      puts "#{title}, created on #{year} has been added with a rating of #{rating}. The synopse is #{synopse}"
    end
  when "update"
    puts "Movie?"
    title=gets.chomp
    if names.include?(title)
      movie = movies.select{|a| a[:name] == title}
      puts "Rating?"
      rating=gets.chomp
      rating = rating.to_f
      puts "Year?"
      year=gets.chomp
      year= year.to_i
      puts "Synopse?"
      synopse=gets.chomp
      movies.delete(movie)
      movies << {name: title, year: year, imdb_rating: rating, synopse: synopse}
      puts "#{title}, updated with year #{year}, a rating of #{rating} and a synopse #{synopse}"
    else
      puts "I don't have the filme #{title}"
    end

  when "display"
    movies.each {|m| puts "#{m[:name]} (#{m[:year]}), has a IMBD rating of #{m[:imdb_rating]} and the synopse is: #{m[:synopse]}" 
    puts ""
  }
  when "delete"
    puts "Movie?"
    title=gets.chomp
    if names.include?(title)
      movie = movies.select{|a| a[:name] == title}
      puts movie
      movies.delete(movie)
      puts movies
      puts "#{title} has been deleted."
    else
      puts "Movie not found!"
    end
  when "exit"
    puts "See you later"
  else
    puts "Error!"
end
end