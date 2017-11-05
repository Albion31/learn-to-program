# safer picture downloading

Dir.chdir "/Users/lan/Desktop/learn-to-program/chapter11"
#this changes to the chapter11 directory

#first we find all the pictures to be moved
pic_names = Dir["/Users/lan/Desktop/Pictures/*.{jpg,jpeg,JPG,JPEG}"]

puts "What is the name of this batch of pictures?"
batch_name = gets.chomp
puts ""
print "Downloading #{pic_names.length} files: "
#this lets us know how many files are being downloading

pic_number = 1
# this will be the counter

pic_names.each do |name|
  print "." #this is our progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

=begin
This renames the picture, but since "name" has a big long path on it,
and "new_name" doesn't, it also moves the file to the current working
directory, which is now chapter11 folder.
Since it's a *move*, this effectively downloads and deletes the originals.
The little dots let us know that my program didn't is still working
=end

  if File.exist?(new_name)
    puts "This file name already exists - The pictures have not been downloaded."
    exit #kills the program
  else
    File.rename(name, new_name)
  end
   #if the file name exists, kill the program so we don't overwrite the
   #existing pictures

  pic_number += 1 #moving on to the next picture
end

puts "" #this is so we are not on the progress bar line
puts "#{pic_names.length} have been moved and renamed."
