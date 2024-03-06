def find_uniq(arr)
  unique_numbers = arr.uniq
  unique_numbers.filter { |each| arr.count(each) == 1}.first
end

p find_uniq([ 1, 1, 1, 2, 1, 1 ])
