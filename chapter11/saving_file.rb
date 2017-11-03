filename = "ListerQuote.txt"
test_string = "I promise that I swear absolutely that " +
              "I will never mention gazpacho soup again"

File.open (filename), "w" do |f|
  f.write(test_string)
end
# File.open is to open the file and "w" is for write-access to the file
# here we are adding the test_string to the file ListerQuote.txt

read_string = File.read(filename)
#this is to read the file

puts (read_string == test_string)
#this checks that the file saved in ListerQuote.txt is the same as what
#is written is test_string
