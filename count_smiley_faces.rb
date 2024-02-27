def count_smileys(arr)
  arr.count { |smiley| smiley.match(/[:;][-~]?[)D]/) }
end
