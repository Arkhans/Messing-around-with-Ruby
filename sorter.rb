puts "You can enter as many words as you like and I will alphabetically sort them for you!"
puts "Please only type on word per line."
puts "To stop adding words just press return on an empty line"

words = []
word = "a"

while word != ""
  word = gets.chomp
  words.push word
end

puts words.sort

