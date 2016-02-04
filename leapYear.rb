puts "What should the starting year be?"
start_year = gets.chomp.to_i

puts "What should the end year be?"
end_year = gets.chomp.to_i

puts ""

while start_year != end_year
  if (start_year % 4 == 0) and (start_year % 100 != 0) or (start_year % 400 == 0)              
    puts start_year.to_s
  end
  start_year += 1
end