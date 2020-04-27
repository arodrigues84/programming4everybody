
#single line if

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each {|x| puts x if x%2==0}

#upto

"l".upto("p") {|l| puts l.upcase}


#respond.to?

age = 26

age.respond_to?(:next)


puts "What's your favorite language?"
language = gets.chomp

case language
  when "Ruby" then puts "Ruby is great for web apps!"
  when "Python" then puts "Python is great for science."
  when "JavaScript" then puts "JavaScript makes websites awesome."
  when "HTML" then puts "HTML is what websites are made of!"
  when "CSS" then puts "CSS makes websites pretty."
  else puts "I don't know that language!"
end

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." if n <= 0
  Prime.first n
end

first_n_primes(10)