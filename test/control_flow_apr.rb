print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

puts "---Control-flow 4/17---"
puts "x?"
x=gets.chomp
puts "y?"
y=gets.chomp

if x > y
  puts "x is larger than y"
elsif x < y
  puts "y is larger than x"
else
  puts "They are equal"
end


puts "---Control-flow 5/17---"
hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

puts "---Control-flow 15/17---"
puts "tired?"
x=gets.chomp
tired= x.to_s.downcase =="true"
unless tired
  puts "Keep working"
else 
  puts "Take a Rest"
end