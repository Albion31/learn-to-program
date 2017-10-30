# building and sorting an array

puts "Please type as many words as you want, one per line."
puts "Once done, press Enter on an empty line and I will sort them for you."

words = []

while true
  word = gets.chomp
  words.push(word)
  if word == ""
    break
  end
end

puts words.sort
