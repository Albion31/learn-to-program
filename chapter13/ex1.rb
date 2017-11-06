#extend the buil-in classes - shuffle

#Array class wiht shuffle method
class Array
  def shuffle
    arr = self
    shuf = []
    while arr.length > 0
      rand_index = rand(arr.length)
      curr_index = 0
      new_arr = []

      arr.each do |item|
        if curr_index == rand_index
          shuf.push(item)
        else
          new_arr.push(item)
        end
        curr_index = curr_index + 1
      end
      arr = new_arr
    end
    shuf
  end
end

#Interger class with factorial method and old_roman method

class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def old_roman
    roman = ""
    roman = roman + "M" * (self / 1000)
    roman = roman + "D" * (self % 1000 / 500)
    roman = roman + "C" * (self % 500 / 100)
    roman = roman + "L" * (self % 100 / 50)
    roman = roman + "X" * (self % 50 / 10)
    roman = roman + "V" * (self % 10 / 5)
    roman = roman + "I" * (self % 5)
  end
end

print [1,2,3,4,5,6,7,8,9].shuffle
puts ""
puts 10.factorial
puts 77.old_roman
