#happy birhtday

puts "What year were you born?"
year = gets.chomp
puts "What month were you born? (Please put the month between 1-12)"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

age = (Time.new - (Time.local(year, month, day))) / 60 / 60 / 24 / 365
puts "You are #{age.to_i} years old"
puts "SPANK!\n"*age
