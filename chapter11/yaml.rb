#yaml

#yaml is a format for representing objects as strings

require "yaml" #yaml is already installed when you install ruby
#to use it you need to import it to the program by using the require method

test_array = ["Give Quiche A Chance",
              "Mutants Out!",
              "Chameleonic Live-Forms, No Thanks"]

test_string = test_array.to_yaml
# .to_yaml is like using .to_s, it is a description of "test_array"

filename = "RimmerTShirts.txt"

File.open (filename), "w" do |f|
  f.write(test_string)
end

# read_string = File.read (filename)
read_string = File.read(filename)
read_array = YAML::load read_string

puts (read_string == test_string)
puts (read_array == test_array)
