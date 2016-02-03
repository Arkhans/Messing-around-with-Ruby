bottles = 99
bottles_new = bottles - 1

while bottles > 0
  puts bottles.to_s + " bottles of beer on the wall, " + bottles.to_s + "bottles of beer."
  puts "Take one down and pass it around, " + bottles_new.to_s + " bottles of beer on the wall."
  bottles -= 1
end