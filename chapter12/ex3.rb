# roman to integer

def roman_to_integer(roman)
  digit_vals = {"i" => 1,
    "v" => 5,
    "x" => 10,
    "l" => 50,
    "c" => 100,
    "d" => 500,
    "m" => 1000}

  total = 0 #this is going to be our final number
  prev = 0 #this is for special cases
  index = roman.length - 1 #this is the index of the last letter

  while index >= 0 #while the index number is still positive, do the below:
    #set the last letter of the roman number to the variable c
    c = roman[index].downcase
    #set the index number to the one before (moving from last to first letter)
    index -= 1
    #convert the letter to the corresponding number
    val = digit_vals[c]
    #if the letter is not a valid one, puts the below
    if !val
      puts "This is not a valid roman numeral!"
      return
    end
    #the below is for the
    if val < prev
      val *= -1
      #set the val to a negative number for special cases like
      #IV(5-1 = 4), IX (10 - 1 = 9), CM(1000 - 100 = 900)
    else
      prev = val
    end
    total = total + val
  end

  total
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))
