#My version of redacted

puts "Document to be Redacted:"
text = gets.chomp

puts "Word to be Redacted"
redact = gets.chomp

words = text.split(" ")
words_to_redact = redact.split(" ")
words_to_redact.map!(&:downcase)
redacted_text= [] 
words.each do |i|
  if words_to_redact.include? i.downcase
    redacted_text.push("REDACTED")
  else
    redacted_text.push(i) 
  end
end

puts (redacted_text *" ")
