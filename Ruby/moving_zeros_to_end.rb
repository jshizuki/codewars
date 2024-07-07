def moveZeros(arr)
  number_of_zeros = arr.count(0)
  arr.delete(0)
  number_of_zeros.times { arr << 0 }
  arr
end

p moveZeros([1,2,0,1,0,1,0,3,0,1])
