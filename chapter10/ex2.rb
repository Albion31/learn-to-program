# shuffle

def shuffle(arr)
  shuf = []
  while arr.length > 0
    rand_index = rand(arr.length)
# pick a random index number and assign it to the rand_index variable
    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuf.push(item)
      else
        new_arr.push(item)
      end
      curr_index = curr_index + 1
=begin
do this loop for all items of the array. All items will be pushed to the
new_arr apart from the one that is located at the index chosen at random
assigned to the rand_index variable
Note: the rand_index will never be 0 as we assume that the array is not
empty so arr.length cannot be 0
=end
    end
    arr = new_arr
=begin
then assign the new_arr to to the arr variable, this will then start the
whole process again until new_arr is empty and all the items are pushed
to the shuf array
=end
  end
  puts "new_arr = #{new_arr}"
  shuf
end

print (shuffle([1,2,3,4,5,6,7,8,9]))
