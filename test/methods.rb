#DEFine a method
def square(n)    #header
  puts n ** 2  #Body
end            #end

# Return

def add(a,b)
  return a + b
end

def greeter (name)
  return "Greeting #{name}"
end
  
def by_three? (number)
  return number % 3 == 0
end
  
# method that capitalizes a word
def capitalize(string) 
    puts "#{string[0].upcase}#{string[1..-1]}"
  end
  
  capitalize("ryan") # prints "Ryan"
  capitalize("jane") # prints "Jane"
  
  # block that capitalizes each string in the array
  ["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

  # reverse sorting

  fruits = ["orange", "apple", "banana", "pear", "grapes"]

  fruits.sort! do |firstFruit, secondFruit|
    secondFruit <=> firstFruit  
  end

  books.sort do |first, second| 
    if first < second # first book before second alphabetically
      -1
   elsif first > second # first after second
     1
   else # first and second are the same
     0
   end
 end
#ordering your library
 def alphabetize(arr, rev=false)
    if rev
      arr.sort { |item1, item2| item2 <=> item1 }
    else
      arr.sort { |item1, item2| item1 <=> item2 }
    end
  end
  
  books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
  
  puts "A-Z: #{alphabetize(books)}"
  puts "Z-A: #{alphabetize(books, true)}"

  #my version

  def alphabetize (arr,rev=false)
    arr.sort!
    if rev
      arr.reverse!
    else
      return arr
    end
  end
  
  numbers = [5,1,2,3,4]
  puts alphabetize(numbers,true)
  