#nil
creatures = { "weasels" => 0,
    "puppies" => 6,
    "platypuses" => 3,
    "canaries" => 1,
    "Heffalumps" => 7,
    "Tiggers" => 1
  }
  
  puts creatures["leon"]

# Simbols

menagerie = { :foxes => 2,
    :giraffe => 1,
    :weezards => 17,
    :elves => 1,
    :canaries => 4,
    :ham => 1
  }

puts movies.select{|k,v| v > 4}.keys #display the keys

#object_id

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

#Strings to Symbols

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each {|s| symbols.push(s.to_sym)}

puts symbols

#intern
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each {|s| symbols.push(s.intern)}

puts symbols

#Inputing values in hashes
#Rocket
movies = {
  :Titanic => "There was room for Jack",
  :Fight_Club => "You don't talk about Fight Club"
}
puts movies

#new symbols
movies = {
  Titanic: "There was room for Jack",
  Fight_Club: "You don't talk about Fight Club"
}
puts movies

movies = Hash.new
movies[:Titanic] = "There was room for Jack"
movies[:Fight_Club] = "You don't talk about Fight Club"

puts movies