def comp(array1, array2)
  return false if array1 == nil || array2 == nil
  multiplicities = array2.map { |integer| Math.sqrt(integer) }
  array1.map(&:to_f).sort === multiplicities.sort
end
