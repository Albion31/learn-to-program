# rite of passage: sorting

def sort(arr)
  rec_sort(arr, [])
end

=begin
sort method taking 1 argument (arr) is calling the recursive method rec_sort
passing it 2 arguments: the arr (unsorted) and an empty array (sorted).
the sort method is a wrapper method that wraps the recursive method rec_sort
=end

def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

=begin
if the arr passed through the rec_sort method has a length of 0 or negative,
return the empty array
=end

  smallest = unsorted.pop
  still_unsorted = []

#smallest variable pops the last object of the unsorted array
#storing an empty array to the variable still_unsorted

  unsorted.each do |tested_object|
    if tested_object < smallest
      still_unsorted.push(smallest)
      smallest = tested_object
    else
      still_unsorted.push(tested_object)
    end
  end

=begin
we are passing each element of the array to the each method. If the first element
of the array comes before the last element of the array, we push that last element
into the still_unsorted array. Else we push the first element into the
still_unsorted array. The last element has been popped out of the array.
this is to find the smallest element which will be stored into the smallest
variable
=end

  sorted.push(smallest)

#once we find the smallest word, we push it in to the sorted array

  rec_sort(still_unsorted, sorted)
  
=begin
then we recursively repeat the process with the still_unsorted array and push
the smallest word into the sorted array, until we pushed them all in the sorted
array
=end
end

puts(sort(['can','feel','singing','like','a','can']))
