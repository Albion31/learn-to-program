# Grandfather clock

def grandfather_clock(&block)
  hour = Time.new.hour
  puts hour

  if hour >= 13
    hour -= 12
  end

  if hour == 0
    hour = 12
  end

  puts hour

  hour.times do
    block.call
  end  
end

grandfather_clock do
  puts "DONG!"
end
