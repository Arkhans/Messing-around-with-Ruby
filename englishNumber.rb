def englishNumber number
  if number < 0  
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  

  numString = '' 

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

    
  left = number
  #trilions
  write = left/1000000000
  left = left - write*1000000000

  if write > 0 
    milions = englishNumber write
    numString = numString + milions + ' trilion'
    if left > 0
      numString = numString + ' '
    end
  end

  #bilions
  write = left/1000000000
  left = left - write*1000000000

  if write > 0 
    milions = englishNumber write
    numString = numString + milions + ' bilion'
    if left > 0
      numString = numString + ' '
    end
  end

  #milions
  write = left/1000000
  left = left - write*1000000

  if write > 0 
    milions = englishNumber write
    numString = numString + milions + ' milion'
    if left > 0
      numString = numString + ' '
    end
  end
  
  # thousands
  write = left/1000
  left = left - write*1000

  if write > 0
    thousands = englishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
      numString = numString + ' '
    end
  end

  #hundreds  
  write = left/100          
  left  = left - write*100  

  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "numString", we add the string ' hundred' after it.
    # So, for example, if we originally called englishNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have englishNumber write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # englishNumber writes out 'ninety-nine'.

    if left > 0
      numString = numString + ' '
    end
  end

  #tens
  write = left/10          
  left  = left - write*10  

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left  
  left  = 0     

  #ones
  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts englishNumber(gets.chomp.to_i)
