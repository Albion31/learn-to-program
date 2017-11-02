#expanded exp_english_number to millions and trillions

def exp_english_number(number)
  # puts "number = #{number}"
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
    return 'zero'
  end

  num_string = ""

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

  #expanding to trillions
  left = number
  write = left/1000000000
  left = left - write * 1000000000
  # puts "write_trillions = #{write} left = #{left}"

  if write > 0
    trillions = exp_english_number(write)
    num_string = num_string + trillions + " trillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #expanding to millions
  write = left/1000000
  left = left - write * 1000000
  # puts "write_millions = #{write} left = #{left}"

  if write > 0
    millions = exp_english_number(write)
    num_string = num_string + millions + " million"
    if left > 0
      num_string = num_string + " "
    end
  end

  #expanding to thousand
  write = left/1000
  left = left - write * 1000
  # puts "write_thousand = #{write} left = #{left}"

  if write > 0
    thousands = exp_english_number(write)
    num_string = num_string + thousands + " thousand"
    if left > 0
      num_string = num_string + " "
    end
  end

  write = left/100
  left = left - write*100

  # puts "write1 = #{write} left = #{left}"

  if write > 0
    hundreds = exp_english_number(write)
    # puts "hundreds1 = #{hundreds}"
    num_string = num_string + hundreds + ' hundred'
    # puts "num_string1 = #{num_string}"
    if left > 0
      num_string = num_string + ' '
    # puts "num_string2 = #{num_string}"
    end
  end

  write = left/10
  left = left - write*10
  # puts "write2 = #{write} left = #{left}"

  if write > 0
    if write == 1 && left > 0
      num_string = num_string + teenagers[left-1]
      # puts "num_string3 = #{num_string}"

      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # puts "num_string4 = #{num_string}"

    end
    if left > 0
      num_string = num_string + '-'
      # puts "num_string5 = #{num_string}"
    end
  end

  write = left
  left = 0
  # puts "write3 = #{write} left = #{left}"

  if write > 0
    num_string = num_string + ones_place[write-1]
  # puts "num_string6 = #{num_string}"
  end
  # puts "num_string_end = #{num_string}"
  num_string
end

puts exp_english_number(136540212)
puts exp_english_number(325123567241)
