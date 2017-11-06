# Program logger

def log(description, &block)
  puts "We are starting \"#{description}\"..."
  result = block.call
  puts "...\"#{description}\" has ended and the result is \"#{result}\""
end

log "outer block" do
  log "some little block" do
    31 * 12
  end

  log "yet another block" do
    "Hello World! " * 3
  end
  "Mission Completed"
end
