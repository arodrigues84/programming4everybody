=begin
print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end
  
puts "Your string is: #{user_input}"
=end

print "Could you pick a word?"
user_input=gets.chomp
while user_input==""
  print "Could you say that again?"
  user_input=gets.chomp
end
if user_input.include?("s") || user_input.include?("S") || user_input.include?("ce")|| user_input.include?("Ce")|| user_input.include?("ci")|| user_input.include?("Ci")
  user_input.gsub!(/s/, "th")
  user_input.gsub!(/S/, "Th")
  user_input.gsub!(/ce/, "the")
  user_input.gsub!(/Ce/, "The")
  user_input.gsub!(/ci/, "thi")
  user_input.gsub!(/Ci/, "Thi")
  puts ("You mean #{user_input}")
else
  puts "That I can say without a problem"
end
