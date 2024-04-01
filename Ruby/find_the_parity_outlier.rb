def find_outlier(integers)
  array_of_booleans = integers[0..2].map { |num| num.even? }
  result = (array_of_booleans.count { |boolean| boolean == true }) >= 2 ? "Even" : "Odd"
  result == "Even" ? integers.find { |integer| integer.odd? } : integers.find { |integer| integer.even? }
end

puts find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])
