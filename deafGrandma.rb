puts "HELLO CHILD!"
bye = 0

while bye < 3
  answer = gets.chomp
    if answer != answer.upcase
    puts "HUH?!  SPEAK UP, SONNY!"
    end
    if answer == answer.upcase
      year = rand(1930..1950)
      puts "NO, NOT SINCE " + year.to_s + "!"
    end
    if answer == "BYE" || answer == "BYE!"
      bye += 1
    end
end