# deaf grandma

puts "Hi Sonny, how are you? "

while true
  answer = gets.chomp

  if answer != answer.upcase
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  end
  
  if answer == "BYE"
    puts "BYE SONNY!"
    break
  end
end
