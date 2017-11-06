# Better program logger

$depth = 0 #$ specifies that this is a global variable
def log(description, &block)
  indent = "  " * $depth #this is for the identation
  puts "#{indent}We are starting \"#{description}\"..."
  $depth += 1 #adding the indentation to the string
  result = block.call
  $depth -= 1 #subtracting the indentation to the string
  puts "#{indent}...\"#{description}\" has ended and the result is \"#{result}\""
end

log "outer block" do
  log "some little block" do
    31 * 12
  end

  log "yet another block" do
    "Hello world " * 3
  end
  "Mission Completed"
end
