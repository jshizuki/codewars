def get_sum(a, b)
  a > b ? (b..a).to_a.sum : (a..b).to_a.sum
end

p get_sum(1, 0)
