puts "HELLO CHILD!"
answer = gets.chomp
while answer != answer.upcase
  puts "HUH?!  SPEAK UP, SONNY!"
  answer = gets.chomp
  if answer == answer.upcase
    year = rand(1930..1950)
    puts "NO, NOT SINCE " + year.to_s + "!"
    answer = gets.chomp
  end
  if answer == "BYE" || answr == "BYE!"
    puts "OH! GOODBYE MY CHILD!"
  end
end 
