# build a better playlist

def music_shuffle(filenames)
  filenames = filenames.sort
  len = filenames.length
  # this will help sort out the input before mixing it as we don't know how
  # shuffled the songs might already be

  2.times do # we are going to do this twice and cut it once
    l_idx = 0 #index of the next song in the left pile(filenames)
    r_idx = len/2 #index of the next song in the right pile as this cuts the
    #pile(filenames) into 2
    shuf = []
    #if we have an odd number of songs, then the right pile will be larger

    while shuf.length < len
      #while the length of the shuf array is smaller than the length of all
      #filenames iterate on the block below
      if shuf.length % 2 == 0
        #if the length of the shuf array is even, push the file in the right
        #pile to the array shuf
        shuf.push(filenames[r_idx])
        r_idx += 1
      else
        #if the length is odd, push the first item of the pile(filename),
        #which is from the left deck, to the array shuf
        shuf.push(filenames[l_idx])
        l_idx += 1
      end
    end

      filenames = shuf
      #filenames variable is now the shuff array, we then do this shuf process
      #once again with the 2.times do method. In the end, the filenames contains
      #a list of songs that have first been sorted then shuffled twice
  end

  #now we cut the deck
  arr = []
  cut = rand(len) #index of the card to cut at which is a random number between
  #0 and the length of the list
  idx = 0

  while idx < len #while the idx is still lower than the length of the list do:
    arr.push(filenames[(idx + cut) % len]) #pushes the file that is
    # where we cut the pile to the array. The modulo len is for when idx + cut
    # is higher than len so the modulo will return the remainder which is the
    #index of the song to push to the array
    idx += 1
  end

  arr
end

songs = ['aa/bbb',   'aa/ccc',   'aa/ddd',
              'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
print(music_shuffle(songs))
