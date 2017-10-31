# modern roman numerals

def modern_roman(number)
  roman_hash = {
    1000 => "M",
    900 => "IX",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  roman = ""
  roman_hash.each do |value, letter|
    roman += letter * (number / value)
    number %= value
  end
  return roman
end

puts modern_roman(1)
puts modern_roman(4)
puts modern_roman(5)
puts modern_roman(6)
puts modern_roman(19)
puts modern_roman(55)
puts modern_roman(112)
puts modern_roman(424)
puts modern_roman(999)
puts modern_roman(3949)
