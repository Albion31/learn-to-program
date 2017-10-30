# leap years

puts "Please choose a starting year."
starting = gets.chomp.to_i
puts "Please choose an ending year."
ending = gets.chomp.to_i

(starting..ending).each do |n|
  if n % 4 == 0
    if n % 100 != 0 || n % 400 == 0
      puts n
    end
  end
end
