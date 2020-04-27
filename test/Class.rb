#example
class Language
    def initialize(name, creator)
      @name = name
      @creator = creator
    end
      
    def description
      puts "I'm #{@name} and I was created by #{@creator}!"
    end
  end
  
  ruby = Language.new("Ruby", "Yukihiro Matsumoto")
  python = Language.new("Python", "Guido van Rossum")
  javascript = Language.new("JavaScript", "Brendan Eich")
  
  ruby.description
  python.description
  javascript.description
  
  # $global_variable, @instance_variable, or @@class_variable 
  class Computer
    $manufacturer = "Mango Computer, Inc."
    @@files = {hello: "Hello, world!"}
    
    def initialize(username, password)
      @username = username
      @password = password
    end
    
    def current_user
      @username
    end
    
    def self.display_files
      @@files
    end
  end
  
  # Make a new Computer instance:
  hal = Computer.new("Dave", 12345)
  
  puts "Current user: #{hal.current_user}"
  # @username belongs to the hal instance.
  
  puts "Manufacturer: #{$manufacturer}"
  # $manufacturer is global! We can get it directly.
  
  puts "Files: #{Computer.display_files}"
  # @@files belongs to the Computer class.

#recap

class Message
    @@messages_sent = 0
    def initialize(from, to)
      @from = from
      @to = to
      @@messages_sent += 1
    end
  end
  
  my_message = Message.new("myself"," & I")
  
  class Email < Message
    def initialize(from, to)
      super
    end
  end
    