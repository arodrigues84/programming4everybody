
#push and delete

my_array=["a","b"]

my_array.push ("c")

puts my_array

my_array2=[1,2]

my_array2.push (3)

puts my_array2

my_array2.delete_at (0)

puts my_array2

#Array of arrays - A MATRIX!

multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}" }

#can hashes be created with {}?
pets = Hash.new
pets["Stevie"] = "cat"

puts pets["Stevie"]

dogs = {}
dogs["vadio"] = "uva"

puts dogs

#Delete element from an hash
bart_family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}
puts bart_family
bart_family.delete("Abe")
puts bart_family

#iterate over an array or an hash

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# iterate in a list of arrays

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each {|i| puts i} }

#Create a Histogram

puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }



# iterate in a hash
secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  
secret_identities.each do |hero, id|
  puts "#{hero}: #{id}"
end
