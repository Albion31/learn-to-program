# deaf grandma extended

puts "Hi Sonny, how are you?"

bye_count = 0

while true
  answer = gets.chomp

  if answer != answer.upcase
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  end

  if answer == "BYE"
    bye_count += 1
  else
    bye_count = 0
  end

  if bye_count == 3
    puts "BYE SONNY!"
    break
  end
end
