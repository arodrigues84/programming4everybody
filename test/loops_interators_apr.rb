#LOOPS & ITERATORS

#while loop
counter = 1
while counter < 12
  puts counter
  counter = counter + 1
end

#until loop

i = 0
until i == 6
  i = i + 1
end
puts i



#for loop

for num in 1...10
    puts num
end

for num in 1..15
    puts num
end


#interator

i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

#next if

i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end


#each

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts "#{x}"
end
puts ("_______")
odds = [1,3,5,7,9]

odds.each{|o| puts o*2}


#times

20.times {print "You're the Man "}

#while loop

i = 1
while i <= 50 do
  print i
  i += 1
end
  
m = 0
loop do
  m += 1
  print "Ruby!"
  break if m == 30
end

30.times {print "Ruby!"}
=begin
# Retracted solution of CodeAcademy
puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
=end

string = "hello,how,are,you"
print string.split(",")
