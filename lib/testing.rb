
# Shift to the left

# left_shift([1, 2, 3, 4], 1) ➞ [2, 3, 4, 1]
# left_shift([1, 2, 3, 4, 5], 3) ➞ [4, 5, 1, 2, 3]
# left_shift([1, 2, 3, 4, 5], 5) ➞ [1, 2, 3, 4, 5]
# # You have fully shifted the array, you end up back where you began.

# left_shift([1, 2, 3, 4, 5], 6) ➞ [2, 3, 4, 5, 1]
# # You should be able to take in numbers greater than the length.
# # Think of the length of the array as a modulo.

def left_shift(array, shifter)
  counter = 0
  temp = 0

# Could try:
  # 1. Assigning temp1 to whole array pieces we want to shift. Assigning temp2 to the array pieces we want to keep. Assigning array to temp2, temp1. And maybe flattening?
  # 2. Use array.collect.with_index


  while counter < shifter
    temp1 = array[counter]
    temp2 = 
   temp = array.length - counter
   puts array[counter]
   array[counter] = array[temp]
   puts "Array is now #{array}"
   counter += 1
  end

  # remove from front
  # array.collect do |item|
  #   if index < shifter
  #     delete_at(index)
  #     array.push(item)
  #     puts array  
  #   end
  #   index += 1
  # end
  
  # array
end


array = [1, 2, 3, 4]
puts left_shift(array, 2)