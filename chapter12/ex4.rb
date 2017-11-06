# birthday helper

#  First, load in the birthdates.
birth_dates = {}

File.read('/Users/lan/Desktop/learn-to-program/chapter12/birthday.txt').each_line do |line|
  line = line.chomp
  # puts line
  # Find the index of first comma, so we know where the name ends.
  first_comma = 0

  while line[first_comma] != ',' && first_comma < line.length
    first_comma += 1
  end
  #we are trying to find which index the first comma is and everything before
  #that would be the name

  name = line[0..(first_comma - 1)]
  #this is the name of the person, from the first index to the one just before the comma
  date = line[-12..-1]
  #the date is the last 12 index of the line
  # puts date
  birth_dates[name] = date
end

#  Now ask the user which one they want to know.
puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "This name is not on the list"
else
  puts date[0..5]
end
