#yielding

def double (n)
    yield n
  end
  
  double (23) {|n| n*2}

  #Proc

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3

#putting both together

def greeter
    yield
  end
  
  phrase = Proc.new {puts "Hello there!"}
  
greeter(&phrase)

#Call

hi = Proc.new {puts "Hello!"}
hi.call

#quick class change
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)

puts strings_array

#lambda

def lambda_demo(a_lambda)
    puts "I'm the method!"
    a_lambda.call
end
  
lambda_demo(lambda { puts "I'm the lambda!" })

#another example

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]


symbol_filter = lambda {|a| a.is_a? Symbol}

symbols = my_array.select(&symbol_filter)

puts symbols