=begin

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end
=end

movies = {
  Fight_Club: 5,
  Star_Wars: 5,
  Eternal_Sunshine_of_the_Spotless_Mind: 5
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase

case choice
  when "add"
    puts "Movie?"
    title=gets.chomp
    if movies[title.to_sym].nil?
      puts "Rating?"
      rating=gets.chomp
      movies[title.to_sym]=rating.to_i
      puts "#{title} has been added with a rating of #{rating}."
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
  when "update"
    puts "Movie?"
    title=gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      puts "New Rating"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been updated with new rating of #{rating}."
    end
  when "display"
    movies.each {|m, r| puts "#{m}: #{r}"}
  when "delete"
    puts "Movie?"
    title=gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      movies.delete(title.to_sym)
      puts "#{title} has been deleted."
    end
  else
    puts "Error!"
end