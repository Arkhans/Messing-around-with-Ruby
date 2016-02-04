table = ["Table of Contents", "Chapter 1:  Numbers", "Chapter 2:  Letters", "Chapter 3:  Variables", "page 1", "page 72", "page 118"]

lineWidth = 40
puts table[0].center lineWidth
puts table[1].ljust(lineWidth/2) + table[4].rjust(lineWidth/2)
puts table[2].ljust(lineWidth/2) + table[5].rjust(lineWidth/2)
puts table[3].ljust(lineWidth/2) + table[6].rjust(lineWidth/2)