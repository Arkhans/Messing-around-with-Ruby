puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in?"
month = gets.chomp 

puts "What day were you born on?"
day = gets.chomp

now = Time.new
birthday = Time.mktime(year, month, day)

old = (now - birthday)/60/60/24/365
old = old.to_i
puts "You're " + old.to_s + " years old! Prepare to get spanked!"
puts ""
spanks = 0

while spanks < old
  puts "SPANK!"
  spanks += 1
end
